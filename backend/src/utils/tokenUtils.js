require('dotenv').config({ path: require('path').resolve(__dirname, '../.env') });
const { log } = require('console');
const jwt = require('jsonwebtoken');

function generateToken(a_id) {
    return jwt.sign({ a_id }, process.env.JWT_SECRET_KEY);
}

function validateToken(token) {
    try {
        jwt.verify(token, process.env.JWT_SECRET_KEY);
        return true;
    } catch (error) {
        console.error('Invalid Token', error);
        return false;
    }
}

function readToken(token) {
    return JSON.parse(Buffer.from(token.split('.')[1], 'base64').toString('binary'));
}

module.exports = { generateToken, validateToken, readToken };
