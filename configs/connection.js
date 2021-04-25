const mysql = require('mysql');
const inquirer = require('inquirer');
const consoleTable = require('console.table')


const connection = mysql.createConnection({
    host: 'localhost',
    port: 3306,
    user: 'root',
    password: '',
    database: 'employee_db'
})


connection.connect(function(err){
    if (err) throw err;
    questions();
})
function questions() {
    inquirer
        .prompt({
            name: 'action',
            type: 'list',
            message: 'Welcome to the Zann Consortium database! What is on the agenda today?',
            choices: [
                    'View all employees',
                    'View all departments',
                    'View all roles',
                    'Add an employee',
                    'Add a department',
                    'Add a role',
                    'Update employee role',
                    'Liquidate an employee',
                    'EXIT'
                    ]