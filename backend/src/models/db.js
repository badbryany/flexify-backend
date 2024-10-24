const { Client } = require('pg');
require('dotenv').config();

const client = new Client({
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    password: process.env.DB_PASSWORD,
    database: process.env.DB_NAME,
    port: process.env.DB_PORT,
});

client.connect((err) => {
    if (err) throw err;
    console.log("Connected to database");
});

async function query(query, values) {
    var result = await client.query({
        rowMode: 'array',
        text: query,
        values
    });
    return result.rows
}

module.exports = query;
