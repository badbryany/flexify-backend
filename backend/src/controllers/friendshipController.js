const query = require('../models/db');
const readToken = require('../utils/tokenUtils');

async function sendFriendshipRequest(req, res) {
    const { username } = req.body

    if (!username) return res.status(400).send('Missing username')

    var send_id = (await query('SELECT a_id FROM accounts WHERE username LIKE $1;', [username.toLowerCase()]))[0][0]
    var result = await query('SELECT * FROM friendship_requests WHERE requester_id=$1 AND send_id=$2;', [req.user.a_id, send_id])
    if (result.length !== 1) {
        await query('INSERT INTO friendship_requests (requester_id, send_id) VALUES ($1, $2);', [req.user.a_id, send_id])
    }
    res.end('done')
}

async function getFriends(req, res) {
    var result = await query('select accounts.a_id, accounts.username, accounts.firstname from friends, accounts WHERE (friends.first_a_id=$1 OR friends.second_a_id=$1) AND accounts.a_id=friends.first_a_id OR accounts.a_id=friends.second_a_id AND accounts.a_id <> $1;', [req.user.a_id])

    res.end(JSON.stringify(result))
}

async function getFriendshipRequests(req, res) {
    var result = await query('select accounts.a_id, accounts.username, accounts.firstname from friendship_requests, accounts WHERE friendship_requests.send_id=$1 AND friendship_requests.requester_id=accounts.a_id;', [req.user.a_id])

    res.end(JSON.stringify(result))
}

async function acceptFriendshipRequest(req, res) {
    const { requester_id } = req.body
    if (!requester_id) return res.status(400).end('Missing requester_id')
    
    var result = await query('SELECT request_id FROM friendship_requests WHERE send_id=$1 AND requester_id=$2;', [req.user.a_id, req.body.requester_id])
    if (result.length === 1) {
        await query('INSERT INTO friends (first_a_id, second_a_id) VALUES ($1, $2);', [req.body.requester_id, req.user.a_id])
        await query('DELETE FROM friendship_requests WHERE request_id=$1;', [result[0][0]])
    }
    res.end('done')
}

async function rejectFriendshipRequest(req, res) {
    const { requester_id } = req.body
    if (!requester_id) return res.status(400).end('Missing requester_id')

    var result = await query('SELECT request_id FROM friendship_requests WHERE send_id=$1 AND requester_id=$2;', [req.user.a_id, req.body.requester_id])
    await query('DELETE FROM friendship_requests WHERE request_id=$1;', [result[0][0]])
    res.end('done')
}


async function removeFriendship(req, res) {
    const { friend_id } = req.body
    if (!friend_id) return res.status(400).end('Missing friend_id')

    var result = await query('SELECT * FROM friends WHERE (first_a_id=$1 AND second_a_id=$2) OR (first_a_id=$3 AND second_a_id=$4);', [req.user.a_id, friend_id, friend_id, req.user.a_id])
    if (result.length === 1) {
        await query('DELETE FROM friends WHERE (first_a_id=$1 AND second_a_id=$2) OR (first_a_id=$2 AND second_a_id=$1);', [req.user.a_id, friend_id])
    }
    res.end('done')
}

module.exports = { sendFriendshipRequest, getFriends, getFriendshipRequests, acceptFriendshipRequest, rejectFriendshipRequest, removeFriendship }