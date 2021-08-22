CREATE schema LetsGetSocial;

CREATE table user (
	user_id int NOT NULL auto_increment,
	username varchar(50) NOT NULL,
	email varchar(50) NOT NULL,
	password varchar(50)NOT NULL,
	first_name varchar(25) NOT NULL, 
	last_name varchar(25) NOT NULL,
	create_date_time timestamp DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (user_id)
);


CREATE table post (
	post_id int NOT NULL auto_increment,
	user_id int NOT NULL,
	title varchar(20) NULL,
	body text(120) NOT NULL,
	createDateTime timestamp DEFAULT CURRENT_TIMESTAMP,
	editDateTime timestamp DEFAULT CURRENT_TIMESTAMP,
	deleteDateTime timestamp DEFAULT CURRENT_TIMESTAMP,
	isCommentEnabled boolean NOT NULL default 0,
	PRIMARY KEY (post_id),
	FOREIGN KEY (user_id) REFERENCES user(user_id)
);

CREATE table comment (
	comment_id int NOT NULL auto_increment,
	post_id int NOT NULL,
	user_id int NOT NULL,
	body text(120) NOT NULL,
	createDateTime timestamp DEFAULT CURRENT_TIMESTAMP,
	editDateTime timestamp DEFAULT CURRENT_TIMESTAMP,
	deleteDateTime timestamp DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (comment_id),
	FOREIGN KEY (post_id) REFERENCES post(post_id),
	FOREIGN KEY (user_id) REFERENCES user(user_id)
);
