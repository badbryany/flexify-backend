const query = require('../models/db');
const { readToken } = require('../utils/tokenUtils');

async function submitExercise(req, res)  {
    const { title, type, affectedMuscle, equipment } = req.body
    
    if (!title || !type || !affectedMuscle || !equipment) {
        return res.status(400).send('Missing title or type or affectedMuscle or equipment');
    }

    var result = await query("SELECT title FROM exercises WHERE a_id=$1 AND title=$2;", [req.user.a_id, req.body.title])

    if (result.length === 1) {
        const { oldTitle, newTitle } = req.body
        if (!oldTitle || !newTitle) return res.status(400).end('Missing oldTitle or newTitle')

        sql = 'UPDATE exercises SET title=$1, type=$2, affectedMuscles=$3, equipment=$4 WHERE a_id=$5 AND title=$6'
        await query(sql, [req.body.newTitle, req.body.type, req.body.affectedMuscle, req.body.equipment, req.user.a_id, req.body.oldTitle])
        res.end('done');
        return;
    }

    await query("INSERT INTO exercises (a_id, title, type, affectedMuscles, equipment) VALUES ($1,$2,$3,$4,$5);", [req.user.a_id, req.body.title, req.body.type, req.body.affectedMuscle, req.body.equipment])
    res.end('done');
}

async function deleteExercise(req, res)  {
    const title = req.body
    if (!title) {
        return res.status(400).send('Missing title');
    }

    await query("DELETE FROM exercises WHERE a_id=$1 AND title=$2;", [req.user.a_id, req.body.title])
    await query("DELETE FROM sets WHERE a_id=$1 AND exerciseName=$2;", [req.user.a_id, req.body.title])
    res.end('done')
}

async function getExercises(req, res) {
    var result = await query("SELECT title, type, affectedMuscles, equipment FROM exercises WHERE a_id=$1;", [readToken(req.query.jwt).a_id])
    res.end(JSON.stringify(result));
}


module.exports = { submitExercise, deleteExercise, getExercises }