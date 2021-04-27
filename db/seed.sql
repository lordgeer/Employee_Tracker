USE employee_db;

INSERT INTO department (department_name)
VALUES 
('Board'),('Fleet'),('Management'),('"Human Resources"'),('Special Projects'),('Security');

INSERT INTO role (title, salary, department_id)
VALUES
('Partner', 999999, 1),('Fleet Admiral', 600000, 2),('Underboss', 500000, 3),('Bounty Hunter(retainer)', 75000, 4),('Special Advisor', 90000, 5),('Mercenary', 40000, 6);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES 
('Urai', 'Fenn', 1, 458),('Jerid', 'Sykes', 2, 276),('Venlana', 'Sipal', 3, 486),('Bossk', 'NO DATA', 4, 126),('Silri', 'NO DATA', 5, 724),('Taylor', 'Wilson', 6, 157);