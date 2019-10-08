CREATE DATABASE sheggsme;
create table projects(
    project_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    project_name VARCHAR(255),
    project_desc VARCHAR(255),
    project_type VARCHAR(255),
    project_img VARCHAR(255),
    project_githublink VARCHAR(255)
);
INSERT INTO projects VALUES(NULL,'Sheggs.me','The website you are currently using. My portfolio website.','Website','dead_link','https://github.com/sheggs/sheggs.me');
