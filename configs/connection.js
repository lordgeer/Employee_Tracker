const mysql = require('mysql');
const inquirer = require('inquirer');
const consoleTable = require('console.table')


const connection = mysql.createConnection({
    host: 'localhost',
    port: 3306,
    user: 'root',
    password: 'Emperor1!',
    database: 'employee_db'
})


module.exports = connection;