const query = require('../models/db');
const path = require('path')

async function uploadProfilePicture(req, res) {
    const { image } = req.files
    if (/^image/.test(image.mimetype)) return res.sendStatus(400)
    
    var dir = path.resolve(__dirname, '../../uploads/' + req.user.a_id.toString() + '.' + image.name.split('.')[1])

	image.mv(dir)
	
	await query('UPDATE accounts SET profilepicture_path=$1 WHERE a_id=$2;', [dir, req.user.a_id])

	res.end('done')
}

async function editAccount(req, res) {
	const { username, email, firstname } = req.body

    if (!username || !email || !firstname) return res.status(400).send('Missing username or email or firstname')

    var result = await query('SELECT a_id FROM accounts WHERE username=$1;', [username.toLowerCase()])

    if (result.length != 0 && result[0][0] != req.user.a_id) {
        res.end('username already taken')
        return
    }

    await query("UPDATE accounts SET username=$1, email=$2, firstname=$3 WHERE a_id=$4;", [username.toLowerCase(), email, firstname, req.user.a_id])
    res.end('done')
}

module.exports = { uploadProfilePicture, editAccount }