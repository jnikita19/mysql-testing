--liquibase formatted sql

--changeset buildpiper:1
CREATE TABLE application_versions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    version VARCHAR(50) NOT NULL,
    deployed_by VARCHAR(100),
    deployed_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

--changeset buildpiper:2
CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    department VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

--changeset buildpiper:3
INSERT INTO employees (employee_name, email, department)
VALUES ('John Doe', 'john.doe@example.com', 'Engineering');

--changeset buildpiper:4
INSERT INTO employees (employee_name, email, department)
VALUES ('Jane Smith', 'jane.smith@example.com', 'DevOps');

--changeset buildpiper:5
INSERT INTO application_versions (version, deployed_by)
VALUES ('1.0.0', 'BuildPiper');
