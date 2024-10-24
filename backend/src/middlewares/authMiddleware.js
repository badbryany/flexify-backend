const { validateToken, readToken } = require('../utils/tokenUtils');

function authenticate(req, res, next) {
    const token = req.body.jwt || req.query.jwt;
    if (!token || !validateToken(token)) {
        return res.status(401).end('JWT not valid');
    }
    req.user = readToken(token);
    
    next();
}

module.exports = authenticate;
