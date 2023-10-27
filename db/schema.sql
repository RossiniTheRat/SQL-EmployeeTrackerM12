CREATE TABLE IF NOT EXISTS department (
  id INT PRIMARY KEY,
  name VARCHAR(30)
);

CREATE TABLE IF NOT EXISTS role (
  id INT PRIMARY KEY,
  title VARCHAR(30),
  salary DECIMAL,
  department_id INT,
  FOREIGN KEY (department_id) REFERENCES department(id)
);

CREATE TABLE IF NOT EXISTS employee (
  id INT PRIMARY KEY,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  role_id INT,
  manager_id INT,
  FOREIGN KEY (role_id) REFERENCES role(id),
  FOREIGN KEY (manager_id) REFERENCES employee(id)
);

INSERT INTO department (id, name)
VALUES (1, 'Sales'), (2, 'Marketing'), (3, 'Engineering');

INSERT INTO role (id, title, salary, department_id)
VALUES (1, 'Sales Manager', 80000, 1),
       (2, 'Salesperson', 50000, 1),
       (3, 'Marketing Manager', 90000, 2),
       (4, 'Marketing Coordinator', 55000, 2),
       (5, 'Software Engineer', 100000, 3),
       (6, 'QA Engineer', 75000, 3);

INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES (1, 'John', 'Doe', 1, NULL),
       (2, 'Jane', 'Smith', 2, 1),
       (3, 'Bob', 'Johnson', 2, 1),
       (4, 'Mary', 'Williams', 3, 2),
       (5, 'Tom', 'Lee', 3, 2),
       (6, 'Sara', 'Garcia', 4, 3),
       (7, 'Mike', 'Davis', 5, NULL),
       (8, 'Karen', 'Wilson', 6, 5);