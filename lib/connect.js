'use strict';
import dotenv from 'dotenv';
dotenv.config();

import mysql from 'mysql2/promise';
import config from '../config/config.js';

// --------------------------pool --------------------

const pool = mysql.createPool({
    host: '127.0.0.1',
    user: 'root',
    password: '',// root 비밀번호 수동으로 넣기 
    database: config.DB.DATABASE,
    port: config.DB.PORT,
    connectionLimit: config.DB.DB_CONNECTION_LIMIT,
    multipleStatements: true
});

// const pool = mysql.createPool({
//     host: process.env.DB_HOST,
//     user: process.env.DB_USER,
//     password: process.env.DE_PASSWORD,
//     //password: '',
//     database: config.DB.DATABASE,
//     port: config.DB.PORT,
//     connectionLimit: config.DB.DB_CONNECTION_LIMIT,
//     multipleStatements: true
// });
export { pool };