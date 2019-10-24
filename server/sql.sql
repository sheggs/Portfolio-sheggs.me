CREATE DATABASE sheggsme;
create table projects(
    project_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    project_name VARCHAR(255),
    project_desc VARCHAR(255),
    project_type VARCHAR(255),
    project_img VARCHAR(255),
    project_githublink VARCHAR(255),
    project_private TINYINT(1),
    project_languages VARCHAR(255)
);
INSERT INTO projects VALUES(NULL,'Sheggs.me','The website you are currently using. My portfolio website.','Website','https://images.unsplash.com/photo-1508138221679-760a23a2285b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60','https://github.com/sheggs/Portfolio-sheggs.me',0,"VueJS,NodeJS,SQL");
INSERT INTO projects VALUES(NULL,'BlackRP Website [CMS]','This website is the landing page of the roleplaying server I run known as BlackRP. This website also has the management system to ban and change players details','Website','https://images.unsplash.com/photo-1485550409059-9afb054cada4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=701&q=80','https://github.com/sheggs/BlackRP_Website',1,"NodeJS,MySQL");
INSERT INTO projects VALUES(NULL,'Old Sheggs.me','Created a portfolio website using NodeJS [Express framework] and MongoDB','Website','https://images.unsplash.com/photo-1508138221679-760a23a2285b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60','https://github.com/sheggs/Portfolio-Mongo',0,"NodeJS/MongoDB");
INSERT INTO projects VALUES(NULL,'Marketplace','A online marketplace where users can sell and purchase goods. Also, implemented an administrator panel to approve products and manage users','Website','https://images.unsplash.com/photo-1508138221679-760a23a2285b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60','https://github.com/sheggs/quick_marketplace',0,"PHP,Bootstrap,SQL");
INSERT INTO projects VALUES(NULL,'Sample garrys mod addon','A public snippet of the Garrys Mod Addons repository','Game Addons','https://images.unsplash.com/photo-1508138221679-760a23a2285b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60','https://github.com/sheggs/sample_glua_addon',0,"LUA");
INSERT INTO projects VALUES(NULL,'Android Copy Images app','An app that uses multithreading to efficientally copy images from one folder to another','Application','https://images.unsplash.com/photo-1508138221679-760a23a2285b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60','https://github.com/sheggs/AndroidCopyImagesApp',0,"Java");
INSERT INTO projects VALUES(NULL,'Android Multi Purpose App','An app that has multiple features such as weather, location services (shows your previous locations on google maps) and compass','Application','https://images.unsplash.com/photo-1508138221679-760a23a2285b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60','https://github.com/sheggs/LocationAndroidApp',0,"Java");
INSERT INTO projects VALUES(NULL,'Marketplace','University coursework to create a marketplace using an Object Orianted approach','Application','https://images.unsplash.com/photo-1508138221679-760a23a2285b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60','https://github.com/sheggs/Marketplace',0,"Java");
INSERT INTO projects VALUES(NULL,'MarketApplication','Creating a functional marketplace with user and administrator accounts. Swift was used for the GUI','Application','https://images.unsplash.com/photo-1508138221679-760a23a2285b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60','https://github.com/sheggs/MarketApplication',0,"Java");
INSERT INTO projects VALUES(NULL,'Garrys Mod Addons','An addon pack that is used for roleplaying within Garrys Mod. Repository is private','Game Addons','https://images.unsplash.com/photo-1485550409059-9afb054cada4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=701&q=80','https://github.com/sheggs/BlackRP_GMOD',1,"Lua");
INSERT INTO projects VALUES(NULL,'Sandbox Roleplay Game Modification','Facepunch Studios has an upcoming game known as S&ndbox an upgraded version of Garrys Mod this repo contains the modifications to convert the sandbox gamemode into a roleplaying gamemode.','Game Addons','https://images.unsplash.com/photo-1485550409059-9afb054cada4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=701&q=80','https://github.com/sheggs/BlackRP-Gamemode',1,"C#,MySQL");

