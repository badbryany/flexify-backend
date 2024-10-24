const query = require('../models/db');
const fs = require("fs")
const path = require("path")

async function searchExercises(req, res) {
    let searchString = req.query.q == undefined ? '' : req.query.q;

    var exercises = await query("SELECT * FROM predefined_exercises WHERE LOWER(title) LIKE LOWER('%' || $1 || '%');", [searchString])

    res.end(JSON.stringify(exercises));
}

async function searchExerciseByMuscle(req, res) {
    let searchMuscle = req.query.q == undefined ? '' : req.query.q;

    var exercises = await query("SELECT title FROM predefined_exercises WHERE LOWER(affected_muscles) LIKE LOWER('%' || $1 || '%');", [searchMuscle])

    res.end(JSON.stringify(exercises));
}

async function searchUsers(req, res) {
    let searchString = req.query.q === undefined ? '' : req.query.q;
    var result = await query("SELECT username, firstname FROM accounts WHERE LOWER(username) LIKE LOWER('%' || $1 || '%');", [searchString])
    res.end(JSON.stringify(result))
}

async function getProfilePicture(req, res) {
    var imagePath;
	if (req.query.username === undefined || req.query.username === '') {	
		imagePath = path.resolve(__dirname, '../../uploads/noimg.png')
	} else {
		imagePath = (await query('SELECT profilepicture_path FROM accounts WHERE LOWER(username) LIKE LOWER($1);', [req.query.username]))[0][0]
	}
	
	if (imagePath === null || imagePath === 'null') {
        imagePath = path.resolve(__dirname, '../../uploads/noimg.png')
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
}

module.exports = { searchExercises, searchExerciseByMuscle, searchUsers, getProfilePicture }
