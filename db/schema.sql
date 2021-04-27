DROP DATABASE IF EXISTS employee_db;
CREATE DATABASE employee_db;
USE employee_db;

CREATE TABLE department(
id INT AUTO_INCREMENT,
department_name VARCHAR(30),
PRIMARY KEY (department_id)
);

CREATE TABLE role (
id INT AUTO_INCREMENT,
title VARCHAR(30),
salary DECIMAL(8,2),
department_id INT,
PRIMARY KEY (id),
FOREIGN KEY(department_id) REFERENCES department(department_id)
);

CREATE TABLE employee(
id INT AUTO_INCREMENT,
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(30) NOT NULL,
role_id INT,
manager_id INT,
PRIMARY KEY(id),
  FOREIGN KEY (role_id) REFERENCES role(role_id) 
  FOREIGN KEY (manager_id) REFERENCES role(role_id)
);
