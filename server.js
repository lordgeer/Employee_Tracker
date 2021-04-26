const mysql = require('mysql');
const inquirer = require('inquirer');
const consoleTable = require('console.table')
const connection = require('./config/connection')




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
