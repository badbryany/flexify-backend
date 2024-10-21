var express = require('express');
const { Client } = require('pg')
const jwt = require('jsonwebtoken');
const bcrypt = require("bcrypt")
const fs = require("fs")
const fileUpload = require('express-fileupload')
const path = require('path')
require('dotenv').config();
// const uuid = require('uuid');

var app = express()
app.use(express.urlencoded({ extended: true }));

app.use((req, res, next) => {
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
    next();
});

app.use(
    fileUpload({
        limits: {
            fileSize: 10000000,
        },
        abortOnLimit: true,
    })
);

const PORT = 3000
const saltRounds = 10
const JWT_SECRET_KEY = 'w9HeHusqRmeQWmxUcYgc'

const client = new Client({
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    password: process.env.DB_PASSWORD,
    database: process.env.DB_NAME,
    port: process.env.DB_PORT,
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
    if (req.body.username === undefined || req.body.username === '' ||req.body.password === undefined || req.body.password === '') {
        res.end('bad request\nmissing username or password')
        return;
    }

    var sql = 'SELECT a_id, firstname, email, password FROM accounts WHERE username=$1;';

    query(sql, [req.body.username.trim().toLowerCase()]).then(result => {
        if (result.length === 1) {
            validatePassword(req.body.password, result[0][3]).then((valid) => {
                if (valid) {
                    res.end(JSON.stringify({
			    jwt: generateToken(result[0][0]),
			    firstname: result[0][1],
			    email: result[0][2],

		    }))
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
    if (req.body.username === undefined || req.body.username === '' ||req.body.password === undefined || req.body.password === '') {
        res.end('bad request\nmissing username or password')
        return;
    }

    var result = await query('SELECT a_id FROM accounts WHERE username=$1;', [req.body.username.toLowerCase()])

    if (result.length != 0) {
        res.end('username already taken')
        return
    }
    /* result = await query('SELECT a_id FROM accounts WHERE email=$1;', [req.body.email])
    if (result.length != 0) {
        res.end('email already taken')
        return
    } */

    var a_id = (await query('INSERT INTO accounts (username, email, firstname, surname, password) VALUES ($1,$2,$3,$4, $5) RETURNING a_id;', [req.body.username.toLowerCase(), req.body.email, req.body.firstname, req.body.surname, await hash(req.body.password)]))[0][0]

    res.end(generateToken(a_id))
})

app.post(`${apiPrefix}/uploadProfilePicture`, async (req, res) => {
	if (req.body.jwt === undefined || req.body.jwt === '') {
		res.end('bad request')
		return
	}
	
	const { image } = req.files
    	if (/^image/.test(image.mimetype)) return res.sendStatus(400)
	
	var dir = __dirname + '/uploads/' + readToken(req.body.jwt).a_id.toString() + '.' + image.name.split('.')[1]
	image.mv(dir)
	
	await query('UPDATE accounts SET profilepicture_path=$1 WHERE a_id=$2;', [dir, readToken(req.body.jwt).a_id])

	res.end('done')
})

app.post(`${apiPrefix}/submitExercise`, async (req, res) => {
    if (req.body.jwt === undefined || req.body.jwt === '' || req.body.title === undefined || req.body.title === '' || req.body.type === undefined || req.body.affectedMuscle === undefined || req.body.equipment === undefined) {
        res.end('bad request\nmissing title or type or affectedMuscle or equipment')
        return
    }
    if (!validateToken(req.body.jwt)) {
        res.end('jwt not valid')
        return
    }

    var result = await query("SELECT title FROM exercises WHERE a_id=$1 AND title=$2;", [readToken(req.body.jwt).a_id, req.body.title])

    if (result.length === 1) {
        if (req.body.oldTitle === undefined || req.body.oldTitle === '') {
            res.end('bad request\nmissing oldTitle')
            return
        }
        sql = 'UPDATE exercises SET title=$1, type=$2, affectedMuscles=$3, equipment=$4 WHERE a_id=$5 AND title=$6'
        await query(sql, [req.body.newTitle, req.body.type, req.body.affectedMuscle, req.body.equipment, readToken(req.body.jwt).a_id, req.body.oldTitle])
        res.end('done');
        return;
    }

    await query("INSERT INTO exercises (a_id, title, type, affectedMuscles, equipment) VALUES ($1,$2,$3,$4,$5);", [readToken(req.body.jwt).a_id, req.body.title, req.body.type, req.body.affectedMuscle, req.body.equipment])
    res.end('done');
})

app.post(`${apiPrefix}/deleteExercise`, async (req, res) => {
    if (req.body.jwt === undefined || req.body.jwt === '' && req.body.title === undefined || req.body.title === '') {
        res.end('bad request')
        return
    }
    if (!validateToken(req.body.jwt)) {
        res.end('jwt not valid')
        return
    }

    await query("DELETE FROM exercises WHERE a_id=$1 AND title=$2;", [readToken(req.body.jwt).a_id, req.body.title])
    await query("DELETE FROM sets WHERE a_id=$1 AND exerciseName=$2;", [readToken(req.body.jwt).a_id, req.body.title])
    res.end('done')
})

app.get(`${apiPrefix}/getExercises`, async (req, res) => {
    if (req.query.jwt === undefined || req.query.jwt === '') {
        res.end('bad request\nmissing jwt')
        return
    }
    if (!validateToken(req.query.jwt)) {
        res.end('jwt not valid')
        return
    }
    var result = await query("SELECT title, type, affectedMuscles, equipment FROM exercises WHERE a_id=$1;", [readToken(req.query.jwt).a_id])

    res.end(JSON.stringify(result));
})

app.post(`${apiPrefix}/submitSet`, async (req, res) => {
    if (req.body.jwt === undefined || req.body.jwt === '') {
        res.end('bad request')
        return
    }
    if (!validateToken(req.body.jwt)) {
        res.end('jwt not valid')
        return
    }
    var result = await query("SELECT a_id FROM sets WHERE a_id=$1 AND s_id=$2", [readToken(req.body.jwt).a_id, req.body.s_id])
    if (result.length === 1) {
        await query("UPDATE sets SET exerciseName=$1, reps=$2, weight=$3, date=$4, duration=$5, isBodyWeight=$6, isDuration=$7 WHERE a_id=$8 AND s_id=$9;", [req.body.exerciseName, req.body.reps, req.body.weight, req.body.date, req.body.duration, req.body.isBodyWeight, req.body.isDuration, readToken(req.body.jwt).a_id, req.body.s_id])
        res.end('done')
        return
    }

    await query("INSERT INTO sets (a_id, s_id, exerciseName, reps, weight, date, duration, isBodyWeight, isDuration) VALUES ($1,$2,$3,$4,$5,$6,$7,$8,$9);", [readToken(req.body.jwt).a_id, req.body.s_id, req.body.exerciseName, req.body.reps, req.body.weight, req.body.date, req.body.duration, req.body.isBodyWeight, req.body.isDuration])

    result = await query("SELECT date FROM sets WHERE a_id=$1 AND s_id=$2", [readToken(req.body.jwt).a_id, req.body.s_id])

    res.end('done')
})

app.post(`${apiPrefix}/deleteSet`, async (req, res) => {
    if (req.body.jwt === undefined || req.body.jwt === '' && req.body.title === undefined || req.body.title === '') {
        res.end('bad request')
        return
    }
    if (!validateToken(req.body.jwt)) {
        res.end('jwt not valid')
        return
    }
    await query("DELETE FROM sets WHERE a_id=$1 AND s_id=$2;", [readToken(req.body.jwt).a_id, req.body.s_id])
    res.end('done')
})

app.get(`${apiPrefix}/getSets`, async (req, res) => {
    if (req.query.jwt === undefined || req.query.jwt === '') {
        res.end('bad request')
        return
    }
    if (!validateToken(req.query.jwt)) {
        res.end('jwt not valid')
        return
    }
    var result = await query("SELECT s_id, exerciseName, reps, weight, date FROM sets WHERE a_id=$1;", [readToken(req.query.jwt).a_id])

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

app.post(`${apiPrefix}/sendFriendshipRequest`, async (req, res) => {
    if (req.body.jwt === undefined || req.body.jwt === '' || req.body.username === undefined || req.body.username === '') {
        res.end('bad request')
        return
    }
    if (!validateToken(req.body.jwt)) {
        res.end('jwt not valid')
        return
    }

    var send_id = (await query('SELECT a_id FROM accounts WHERE username LIKE $1;', [req.body.username.toLowerCase()]))[0][0]
    var result = await query('SELECT * FROM friendship_requests WHERE requester_id=$1 AND send_id=$2;', [readToken(req.body.jwt).a_id, send_id])
    if (result.length !== 1) {
        await query('INSERT INTO friendship_requests (requester_id, send_id) VALUES ($1, $2);', [readToken(req.body.jwt).a_id, send_id])
    }
    res.end('done')
})

app.get(`${apiPrefix}/getFriends`, async (req, res) => {
    if (req.query.jwt === undefined || req.query.jwt === '') {
        res.end('bad request')
        return
    }
    if (!validateToken(req.query.jwt)) {
        res.end('jwt not valid')
        return
    }
    var result = await query('select accounts.a_id, accounts.username, accounts.firstname from friends, accounts WHERE (friends.first_a_id=$1 OR friends.second_a_id=$1) AND accounts.a_id=friends.first_a_id OR accounts.a_id=friends.second_a_id AND accounts.a_id <> $1;', [readToken(req.query.jwt).a_id])

    res.end(JSON.stringify(result))
})

app.get(`${apiPrefix}/getFriendshipRequests`, async (req, res) => {
    if (req.query.jwt === undefined || req.query.jwt === '') {
        res.end('bad request')
        return
    }
    if (!validateToken(req.query.jwt)) {
        res.end('jwt not valid')
        return
    }
    var result = await query('select accounts.a_id, accounts.username, accounts.firstname from friendship_requests, accounts WHERE friendship_requests.send_id=$1 AND friendship_requests.requester_id=accounts.a_id;', [readToken(req.query.jwt).a_id])

    res.end(JSON.stringify(result))
})

app.post(`${apiPrefix}/acceptFriendshipRequest`, async (req, res) => {
    if (req.body.jwt === undefined || req.body.jwt === '' || req.body.requester_id === undefined || req.body.request_id === '') {
        res.end('bad request')
        return
    }
    if (!validateToken(req.body.jwt)) {
        res.end('jwt not valid')
        return
    }
    var result = await query('SELECT request_id FROM friendship_requests WHERE send_id=$1 AND requester_id=$2;', [readToken(req.body.jwt).a_id, req.body.requester_id])
    if (result.length === 1) {
        await query('INSERT INTO friends (first_a_id, second_a_id) VALUES ($1, $2);', [req.body.requester_id, readToken(req.body.jwt).a_id])
        await query('DELETE FROM friendship_requests WHERE request_id=$1;', [result[0][0]])
    }
    res.end('done')
})

app.post(`${apiPrefix}/rejectFriendshipRequest`, async (req, res) => {
    if (req.body.jwt === undefined || req.body.jwt === '' || req.body.requester_id === undefined || req.body.request_id === '') {
        res.end('bad request')
        return
    }
    if (!validateToken(req.body.jwt)) {
        res.end('jwt not valid')
        return
    }
    var result = await query('SELECT request_id FROM friendship_requests WHERE send_id=$1 AND requester_id=$2;', [readToken(req.body.jwt).a_id, req.body.requester_id])
    await query('DELETE FROM friendship_requests WHERE request_id=$1;', [result[0][0]])
    res.end('done')
})


app.post(`${apiPrefix}/removeFriendship`, async (req, res) => {
    if (req.body.jwt === undefined || req.body.jwt === '' || req.body.friend_id === undefined || req.body.friend_id === '') {
        res.end('bad request')
        return
    }
    if (!validateToken(req.body.jwt)) {
        res.end('jwt not valid')
        return
    }
    var result = await query('SELECT * FROM friends WHERE (first_a_id=$1 AND second_a_id=$2) OR (first_a_id=$3 AND second_a_id=$4);', [readToken(req.body.jwt).a_id, req.body.friend_id, req.body.friend_id, readToken(req.body.jwt).a_id])
    if (result.length === 1) {
        await query('DELETE FROM friends WHERE (first_a_id=$1 AND second_a_id=$2) OR (first_a_id=$2 AND second_a_id=$1);', [readToken(req.body.jwt).a_id, req.body.friend_id])
    }
    res.end('done')
})

app.get(`${apiPrefix}/searchUsers`, async (req, res) => {
    let searchString = req.query.q === undefined ? '' : req.query.q;
    var result = await query("SELECT username, firstname FROM accounts WHERE LOWER(username) LIKE LOWER('%' || $1 || '%');", [searchString])
    res.end(JSON.stringify(result))
})

app.get(`${apiPrefix}/getProfilePicture`, async (req, res) => {
	var imagePath;
	if (req.query.username === undefined || req.query.username === '') {	
		imagePath = __dirname + '/uploads/noimg.png'
	} else {
		imagePath = (await query('SELECT profilepicture_path FROM accounts WHERE LOWER(username) LIKE LOWER($1);', [req.query.username]))[0][0]
	}
	
	if (imagePath === null || imagePath === 'null') {
		imagePath = __dirname + '/uploads/noimg.png'
	}

	fs.readFile(imagePath, (err, data) => {
    		if (err) {
      			console.error('Error reading image:', err);
      			res.status(500).send('Error retrieving image');
    		} else {
      			const contentType = 'image/jpeg'; // Adjust content type based on image format
      			res.setHeader('Content-Type', contentType);
      			res.send(data);
    		}
  	});
})

app.post(`${apiPrefix}/editAccount`, async (req, res) => {
    if (req.body.jwt === undefined || req.body.jwt === '' || req.body.username === undefined || req.body.username === ''  || req.body.email === undefined || req.body.email === ''  || req.body.firstname === undefined || req.body.firstname === '') {
        res.end('bad request')
        return
    }
    if (!validateToken(req.body.jwt)) {
        res.end('jwt not valid')
        return
    }

    var result = await query('SELECT a_id FROM accounts WHERE username=$1;', [req.body.username.toLowerCase()])

    if (result.length != 0 && result[0][0] != readToken(req.body.jwt).a_id) {
        res.end('username already taken')
        return
    }

    await query("UPDATE accounts SET username=$1, email=$2, firstname=$3 WHERE a_id=$4;", [req.body.username.toLowerCase(), req.body.email, req.body.firstname, readToken(req.body.jwt).a_id])
    res.end('done')
})
