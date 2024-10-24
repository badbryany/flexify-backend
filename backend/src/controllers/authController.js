const bcrypt = require('bcrypt');
const { generateToken } = require('../utils/tokenUtils');
const query = require('../models/db');

async function signIn(req, res) {
    const { username, password } = req.body;
    if (!username || !password) {
        return res.status(400).send('Missing username or password');
    }

    const result = await query('SELECT a_id, firstname, email, password FROM accounts WHERE username=$1', [username.toLowerCase()]);
    
    if (result.length === 1) {
        const isValid = await bcrypt.compare(password, result[0][3]);
        if (isValid) {
            const token = generateToken(result[0][0]);
            return res.json({ jwt: token, firstname: result[0].firstname, email: result[0].email });
        }
    }
    res.status(401).send('Username or password is wrong');
}

async function signUp(req, res) {
    const { username, password, email, firstname } = req.body;
    if (!username || !password) {
        return res.status(400).send('Missing username or password');
    }
    
    var result = await query('SELECT a_id FROM accounts WHERE username=$1;', [username.toLowerCase()])

    if (result.length != 0) {
        res.end('username already taken')
        return
    }

    var a_id = (await query(
        'INSERT INTO accounts (username, email, firstname, surname, password) VALUES ($1,$2,$3,$4, $5) RETURNING a_id;',
        [username.toLowerCase(), email, firstname, req.body.surname, await hash(password)]
    ))[0][0]

    res.end(generateToken(a_id))
}

async function hash(password) {
    return await bcrypt.genSalt(10)
        .then(salt => {
            return bcrypt.hash(password, salt)
        })
        .catch(err => console.error(err.message))
}

module.exports = { signIn, signUp };
