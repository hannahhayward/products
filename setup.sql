CREATE TABLE playstations(  
    id int NOT NULL primary key AUTO_INCREMENT comment 'primary key',
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'created at',
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'updated at',
    series varchar(255) NOT NULL comment 'console series',
    creatorId INT NOT NULL COMMENT 'creator id'
) default charset utf8 comment '';
CREATE TABLE xboxes(  
    id int NOT NULL primary key AUTO_INCREMENT comment 'primary key',
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'created at',
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'updated at',
    series varchar(255) NOT NULL comment 'console series',
    creatorId INT NOT NULL COMMENT 'creator id',
    specialEdition VARCHAR(255) NOT NULL COMMENT 'special edition'
) default charset utf8 comment '';
CREATE TABLE xboxGames(  
    id int NOT NULL primary key AUTO_INCREMENT comment 'primary key',
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'created at',
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'updated at',
    creatorId INT NOT NULL COMMENT 'creator id',
    consoleId INT NOT NULL COMMENT 'FK: xboxes id',
    FOREIGN KEY(consoleId) REFERENCES xboxes(id) ON DELETE CASCADE
) default charset utf8 comment '';
CREATE TABLE playstationGames(  
    id int NOT NULL primary key AUTO_INCREMENT comment 'primary key',
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'created at',
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'updated at',
    creatorId INT NOT NULL COMMENT 'creator id',
    consoleId INT NOT NULL COMMENT 'FK: playstations id',
    FOREIGN KEY(consoleId) REFERENCES playstations(id) ON DELETE CASCADE
) default charset utf8 comment '';
