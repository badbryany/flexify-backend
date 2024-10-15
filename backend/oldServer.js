var express = require('express');
const { Client } = require('pg')
const jwt = require('jsonwebtoken');
const bcrypt = require("bcrypt")
// const uuid = require('uuid');

var app = express()
app.use(express.urlencoded({ extended: true }));

/* app.use((req, res, next) => {
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
    next();
}); */

const PORT = 3000
const saltRounds = 10
const JWT_SECRET_KEY = 'w9HeHusqRmeQWmxUcYgc'

const client = new Client({
    host: 'localhost',
    user: 'docker',
    password: 'docker',
    database: 'flexify',
    port: 5432,
})

function generateToken(a_id) {
    let data = {
        a_id: a_id,
    }
    return jwt.sign(data, JWT_SECRET_KEY);
}

function validateToken(token) {
    try {
        const verified = jwt.verify(token, JWT_SECRET_KEY);
        if (verified) {
            return true;
        } else {
            // Access Denied
            return false;
        }
    } catch (error) {
        console.log(error);
        // Access Denied
        return false;
    }
}

function readToken(jwt) {
    return JSON.parse(Buffer.from(jwt.split('.')[1], 'base64').toString('binary'));
}

app.listen(PORT, () => {
    console.log('Server is running on PORT:', PORT)
    client.connect((err) => {
        if (err) throw err;
        console.log("Connected to database");
    })
})

async function query(query, values) {
    var result = await client.query({
        rowMode: 'array',
        text: query,
        values
    });
    return result.rows
}

async function hash(password) {
    return await bcrypt.genSalt(saltRounds)
        .then(salt => {
            return bcrypt.hash(password, salt)
        })
        .catch(err => console.error(err.message))
}

async function validatePassword(password, hash) {
    return await bcrypt
      .compare(password, hash)
      .then(res => {
        return res
      })
      .catch(err => console.error(err.message))        
}

let apiPrefix = '/api'

app.get(`${apiPrefix}/`, async (req, res) => {
    res.end('flexify backend');
})

app.post(`${apiPrefix}/signin`, (req, res) => {
    var sql = 'SELECT a_id, password FROM accounts WHERE username=$1;';
    query(sql, [req.body.username.toLowerCase()]).then(result => {
        if (result.length === 1) {
        	validatePassword(req.body.password, result[0][1]).then((valid) => {
                	if (valid) {
                    		res.end(generateToken(result[0][0]))
                	} else {
        			res.end('username or password is wrong')
			}
        	})
	} else {
        	res.end('username or password is wrong')
	}
    })
})

app.post(`${apiPrefix}/signup`, async (req, res) => {
	var result = await query('SELECT a_id FROM accounts WHERE username=$1;', [req.body.username])

    if (result.length != 0) {
        res.end('username already taken')
        return
    }

    var a_id = (await query('INSERT INTO accounts (username, email, firstname, surname, password) VALUES ($1,$2,$3,$4, $5) RETURNING a_id;', [req.body.username, req.body.email, req.body.firstname, req.body.surname, await hash(req.body.password)]))[0][0]

    res.end(generateToken(a_id))
})

app.post(`${apiPrefix}/submitExercise`, async (req, res) => {
    if (req.body.jwt === typeof undefined || req.body.jwt === '') {
        res.end('bad request')
        return
    }
    await query("INSERT INTO exercises (a_id, title, type, affectedMuscle, equipment) VALUES ($1,$2,$3,$4,$5);", [readToken(req.body.jwt).a_id, req.body.title, req.body.type, req.body.affectedMuscle, req.body.equipment])

    res.end('done');
})

app.get(`${apiPrefix}/getExercises`, async (req, res) => {
    if (req.body.jwt === typeof undefined || req.body.jwt === '') {
        res.end('bad request')
        return
    }
    var result = await query("SELECT * FROM exercises WHERE a_id=$1;", [readToken(req.body.jwt).a_id])

    res.end(JSON.stringify(result));
})

app.post(`${apiPrefix}/submitSet`, async (req, res) => {
    if (req.body.jwt === typeof undefined || req.body.jwt === '' && req.body.title === typeof undefined || req.body.title === '') {
        res.end('bad request')
        return
    }

    await query("INSERT INTO sets (a_id, exerciseName, reps, weight, date) VALUES ($1,$2,$3,$4,$5);", [readToken(req.body.jwt).a_id, req.body.exerciseName, req.body.reps, req.body.weight, req.body.date])

    res.end('done');
})

app.get(`${apiPrefix}/getSets`, async (req, res) => {
    if (req.body.jwt === typeof undefined || req.body.jwt === '') {
        res.end('bad request')
        return
    }
    var result = await query("SELECT exerciseName, reps, weight, date FROM sets WHERE a_id=$1;", [readToken(req.body.jwt).a_id])

    res.end(JSON.stringify(result));
})

app.get(`${apiPrefix}/searchExercises`, async (req, res) => {
    let searchString = req.query.q == undefined ? '' : req.query.q;

    var exercises = await query("SELECT * FROM predefined_exercises WHERE LOWER(title) LIKE LOWER('%' || $1 || '%');", [searchString])

    res.end(JSON.stringify(exercises));
})

app.get(`${apiPrefix}/searchExerciseByMuscle`, async (req, res) => {
    let searchMuscle = req.query.q == undefined ? '' : req.query.q;

    var exercises = await query("SELECT title FROM predefined_exercises WHERE LOWER(affected_muscles) LIKE LOWER('%' || $1 || '%');", [searchMuscle])

    res.end(JSON.stringify(exercises));
})
