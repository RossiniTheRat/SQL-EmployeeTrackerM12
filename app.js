const inquirer = require('inquirer');

function start() {
  inquirer
    .prompt({
      name: 'action',
      type: 'list',
      message: 'What would you like to do?',
      choices: [
        'View all departments',
        'View all roles',
        'View all employees',
        'Add a department',
        'Add a role',
        'Add an employee',
        'Update an employee role',
        'Exit'
      ]
    })
    .then(answer => {
      switch (answer.action) {
        case 'View all departments':
          // Call function to view all departments
          break;
        case 'View all roles':
          // Call function to view all roles
          break;
        case 'View all employees':
          // Call function to view all employees
          break;
        case 'Add a department':
          // Call function to add a department
          break;
        case 'Add a role':
          // Call function to add a role
          break;
        case 'Add an employee':
          // Call function to add an employee
          break;
        case 'Update an employee role':
          // Call function to update an employee role
          break;
        case 'Exit':
          // Exit the application
          process.exit();
          break;
      }
    });
}

start();