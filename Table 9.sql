CREATE TABLE company (
    company_id SERIAL PRIMARY KEY,
    name VARCHAR NOT NULL
);

INSERT INTO company (name) VALUES 
    ('Tech Solutions Pvt Ltd'),
    ('Innovate Hub'),
    ('NextGen Tech'),
    ('AI Visionaries'),
    ('Cloud Masters');

SELECT * FROM company;

CREATE TABLE departments (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR NOT NULL,
    company_ref INT,
    CONSTRAINT fk_departments_company FOREIGN KEY (company_ref) REFERENCES company(company_id) 
);

INSERT INTO departments (department_name, company_ref) VALUES 
    ('HR', 1),
    ('IT', 2),
    ('Finance', 3),
    ('Marketing', 4),
    ('Operations', 5);

SELECT * FROM departments;

CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR NOT NULL,
    department_ref INT,
    CONSTRAINT fk_employees_department FOREIGN KEY (department_ref) REFERENCES departments(department_id) 
);

INSERT INTO employees (employee_name, department_ref) VALUES 
    ('Amit Sharma', 1),
    ('Priya Verma', 2),
    ('Rahul Mehta', 3),
    ('Sneha Kapoor', 4),
    ('Vikram Singh', 5);

SELECT * FROM employees;

CREATE TABLE projects (
    project_id SERIAL PRIMARY KEY,
    project_name VARCHAR NOT NULL,
    company_ref INT,
    CONSTRAINT fk_projects_company FOREIGN KEY (company_ref) REFERENCES company(company_id) 
);

INSERT INTO projects (project_name, company_ref) VALUES 
    ('AI Chatbot Development', 1),
    ('Cloud Migration', 2),
    ('ERP Implementation', 3),
    ('Cybersecurity Enhancement', 4),
    ('Data Analytics Platform', 5);

SELECT * FROM projects;

CREATE TABLE tasks (
    task_id SERIAL PRIMARY KEY,
    task_description VARCHAR NOT NULL,
    project_ref INT,
    CONSTRAINT fk_tasks_projects FOREIGN KEY (project_ref) REFERENCES projects(project_id) 
);

INSERT INTO tasks (task_description, project_ref) VALUES 
    ('Develop Chatbot UI', 1),
    ('Set up Cloud Infrastructure', 2),
    ('Integrate Payment System', 3),
    ('Enhance Security Features', 4),
    ('Create Data Visualization Dashboard', 5);

SELECT * FROM tasks;