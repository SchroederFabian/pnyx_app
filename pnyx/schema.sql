
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS statements;
DROP TABLE IF EXISTS discussions;

CREATE TABLE users (
    id_user INTEGER PRIMARY KEY AUTOINCREMENT,
    user_name VARCHAR(255) UNIQUE NOT NULL,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email VARCHAR(255) NOT NULL
);

CREATE TABLE statements (
    id_statement INTEGER PRIMARY KEY AUTOINCREMENT,
    id_discussion INTEGER NOT NULL,
    id_user INTEGER NOT NULL,
    statement TEXT,
    time_of_commit TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_user) REFERENCES users (id_user)
);

CREATE TABLE discussions (
    id_discussion INTEGER PRIMARY KEY AUTOINCREMENT,
    status TEXT,
    begin TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    end TIMESTAMP NOT NULL,
    format TEXT
);

