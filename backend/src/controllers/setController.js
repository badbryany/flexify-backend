const query = require('../models/db');

async function submitSet(req, res) {
    const { s_id, exerciseName, reps, weight, date, duration, isBodyWeight, isDuration } = req.body
    if (!s_id || !exerciseName || !reps || !weight || !date || !duration || !isBodyWeight || !isDuration) return res.status(400).send('Missing s_id or exerciseName or reps or weight or date or duration or isBodyWeight or isDuration')

    var result = await query("SELECT a_id FROM sets WHERE a_id=$1 AND s_id=$2", [req.user.a_id, s_id])
    if (result.length === 1) {
        await query("UPDATE sets SET exerciseName=$1, reps=$2, weight=$3, date=$4, duration=$5, isBodyWeight=$6, isDuration=$7 WHERE a_id=$8 AND s_id=$9;", [exerciseName, reps, weight, date, duration, isBodyWeight, isDuration, req.user.a_id, s_id])
        res.end('done')
        return
    }

    await query("INSERT INTO sets (a_id, s_id, exerciseName, reps, weight, date, duration, isBodyWeight, isDuration) VALUES ($1,$2,$3,$4,$5,$6,$7,$8,$9);", [req.user.a_id, s_id, exerciseName, reps, weight, date, duration, isBodyWeight, isDuration])

    result = await query("SELECT date FROM sets WHERE a_id=$1 AND s_id=$2", [req.user.a_id, req.body.s_id])

    res.end('done')
}

async function deleteSet(req, res) {
    const { s_id } = req.body;

    if (!s_id) return res.status(400).send('Missing s_id')
    

    await query("DELETE FROM sets WHERE a_id=$1 AND s_id=$2;", [req.user.a_id, s_id])
    res.end('done')
}

async function getSets(req, res) {
    var result = await query("SELECT s_id, exerciseName, reps, weight, date, duration, isBodyWeight, isDuration FROM sets WHERE a_id=$1;", [req.user.a_id])

    res.end(JSON.stringify(result));
}

module.exports = { submitSet, deleteSet, getSets }