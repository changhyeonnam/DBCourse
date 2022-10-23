# DATABASE MIDTERM ASSIGNMENT_12171483_NamChanghyeon

## Designing and Implementing script of a database for ITS company

This report is about Database midterm assignment. In the report, there are Desription for each table and SQL script for each table and result from colab notebook. Instead of ERD model file, I’m submitting EER diagram model file(.mwb file) and .sql file from Mysql workbench. (I used Workbench instead of ERWIN modeller because mac doesn’t supprot ERWIN modeller.)

## Environment

- SQL : Mysql 8.0.30
- SQL ide : Mysql workbench 8.0
- OS: Mac os
- Language: python 3.8

## ERD model diagram (=EER model diagram)

![Screen Shot 2022-10-23 at 10.02.37 PM.png](DATABASE%20MIDTERM%20ASSIGNMENT_12171483_NamChanghyeon%20e1c210998f1a41eea34a51802b797a77/Screen_Shot_2022-10-23_at_10.02.37_PM.png)

## Table Description

There are 6 tables. I explained each table below.

1. Booking table
    
    
    | COL | DESC |
    | --- | --- |
    | id | Primary key for Booking table |
    | booking_ref | refernce id for booking |
    | Location_dep | Location id(foreign key) for departure address from Location table |
    | Location_arr | Location id(foreign key) for arrival address from Location table |
    | Vehicle_id | Vehicle id(foreign key)  from Vehicle_info table |
    | Driver_id | Driver id(foreign key)  from Driver table |
    | Official_id | Official id (foreign key) from Official table |
    | dep_time | departure time |
    | arr_time | arrival time |
    | dep_odo | departure odometer |
    | arr_odo | arrival odometer |
2. location table
    
    
    | COL | DESC |
    | --- | --- |
    | locid | primary key for location table |
    | street | street address |
    | city | city nubmer (8-digit) |
    | type | address type |
3. Vehicle_info table
    
    
    | COL | DESC |
    | --- | --- |
    | Vehicle_id | primary key for vehicle_info table, foreign key from Vehicle table |
    | regid | Registration Id |
    | manufac | Model |
    | color | Color |
    | current_odo | current odometer |
    | capacity | capcity for vehicle |
4. Vehicle table 
    
    
    | COL | DESC |
    | --- | --- |
    | Vehicle_id | primary key for vehicle table  |
    | action_type | whether maintenance or repair |
    | odometer | current odometer |
    | finalcost | cost for action (maintenance or repair) |
    | description | desc for action (maintenance or repair) |
    | date | date for action (maintenance or repair) |
5. Official table
    
    
    | COL | DESC |
    | --- | --- |
    | id | primary key for official table |
    | language | official’s language  |
    | role | official’s role |
    | city | current odometer |
    | name | capcity for vehicle |
6. Driver table
    
    
    | COL | DESC |
    | --- | --- |
    | id | primary key for Driver table |
    | name | name |
    | license | License for driver |
    | security | security for driver |
    | FATL_pass | FATL : Pass or not |
    | FATL_level | FATL LEVEL |
    | FATL_date | FATL passed date |
    | STLVT_pass | STLVT : Pass or not |
    | STLVT_level | STLVT LEVEL |
    | STLVT_date | STLVT passed date |
    | STLVT_corp | STLVT corporation |

## Script

I will explain script for each table.

### 1. Booking table

- A script for creating tables
    
    ```sql
    CREATE TABLE `booking` (
      `id` int NOT NULL,
      `booking_ref` int DEFAULT NULL,
      `Location_dep` int NOT NULL,
      `Location_arr` int NOT NULL,
      `Vehicle_id` int NOT NULL,
      `Driver_id` int NOT NULL,
      `Official_id` int NOT NULL,
      `dep_time` datetime DEFAULT NULL,
      `arr_time` datetime DEFAULT NULL,
      `dep_odo` varchar(45) DEFAULT NULL,
      `arr_odo` varchar(45) DEFAULT NULL,
      PRIMARY KEY (`id`),
      KEY `fk_booking_location_idx` (`Location_dep`),
      KEY `fk_booking_location1_idx` (`Location_arr`),
      KEY `fk_booking_Vehicle1_idx` (`Vehicle_id`),
      KEY `fk_booking_driver1_idx` (`Driver_id`),
      KEY `fk_booking_Official1_idx` (`Official_id`),
      CONSTRAINT `fk_booking_driver1` FOREIGN KEY (`Driver_id`) REFERENCES `Driver` (`id`),
      CONSTRAINT `fk_booking_location` FOREIGN KEY (`Location_dep`) REFERENCES `Location` (`locid`),
      CONSTRAINT `fk_booking_location1` FOREIGN KEY (`Location_arr`) REFERENCES `Location` (`locid`),
      CONSTRAINT `fk_booking_Official1` FOREIGN KEY (`Official_id`) REFERENCES `Official` (`id`),
      CONSTRAINT `fk_booking_Vehicle1` FOREIGN KEY (`Vehicle_id`) REFERENCES `Vehicle` (`id`)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
    ```
    
- A script for inserting records into tables
    
    ```sql
    INSERT INTO `booking` VALUES (1,23,1,2,1,1,1,'2022-10-01 12:30:30','2022-10-01 11:30:30','4400','4350');
    INSERT INTO `booking` VALUES (2,24,2,1,2,2,2,'2022-10-01 12:35:30','2022-10-01 10:30:30','2200','2195');
    INSERT INTO `booking` VALUES (3,25,3,2,3,3,3,'2022-10-02 12:30:30','2022-10-01 09:30:30','1000','509');
    ```
    


### 2. location table

- A script for creating tables
    
    ```sql
    CREATE TABLE `Location` (
      `locid` int NOT NULL,
      `street` varchar(45) DEFAULT NULL,
      `city` varchar(45) DEFAULT NULL,
      `type` varchar(45) DEFAULT NULL,
      PRIMARY KEY (`locid`)
    ```
    
- A script for inserting records into tables
    
    ```sql
    INSERT INTO `Location` VALUES (1,'563, Wondang-daero, Seo-gu, Incheon	','23090770','library');
    INSERT INTO `Location` VALUES (2,'8-13, Simgok-ro 100beon-gil, Seo-gu, Incheon','23090590','school');
    INSERT INTO `Location` VALUES (3,'131-24, Chamoejeon-ro, Jung-gu, Incheon','23310380','church');
    ```
    

---

### 3. Vehicle_info table

- A script for creating tables
    
    ```sql
    CREATE TABLE `Vehicle_info` (
      `Vehicle_id` int NOT NULL,
      `regid` varchar(45) DEFAULT NULL,
      `manufac` varchar(45) DEFAULT NULL,
      `model` varchar(45) DEFAULT NULL,
      `color` varchar(45) DEFAULT NULL,
      `current_odo` varchar(45) DEFAULT NULL,
      `capacity` varchar(45) DEFAULT NULL,
      PRIMARY KEY (`Vehicle_id`),
      KEY `fk_Vehicle_info_Vehicle1_idx` (`Vehicle_id`),
      CONSTRAINT `fk_Vehicle_info_Vehicle1` FOREIGN KEY (`Vehicle_id`) REFERENCES `Vehicle` (`id`)
    ```
    
- A script for inserting records into tables
    
    ```sql
    INSERT INTO `Vehicle_info` VALUES (1,'2001ABC','Volvo','XC90SE','Silver','4350','4');
    INSERT INTO `Vehicle_info` VALUES (2,'2006AFD','Kia','K7','Black','2195','4');
    INSERT INTO `Vehicle_info` VALUES (3,'2021AHR','Tesla','2020F','White','509','2');
    ```
    

### 4. Vehicle table

- A script for creating tables
    
    ```sql
    CREATE TABLE `Vehicle` (
      `id` int NOT NULL,
      `action_type` varchar(45) DEFAULT NULL,
      `odometer` varchar(45) DEFAULT NULL,
      `finalcost` varchar(45) DEFAULT NULL,
      `description` varchar(45) DEFAULT NULL,
      `date` varchar(45) DEFAULT NULL,
      PRIMARY KEY (`id`)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
    ```
    
- A script for inserting records into tables
    
    ```sql
    INSERT INTO `Vehicle` VALUES (1,'R','4350','3000','wheel repaired','20220809');
    INSERT INTO `Vehicle` VALUES (2,'M','2195','3000','wheel pressure','20220810');
    INSERT INTO `Vehicle` VALUES (3,'R','509','4000','break','20220811');
    ```
    

### 5. Official table

- A script for creating tables
    
    ```sql
    CREATE TABLE `Official` (
      `id` int NOT NULL,
      `country` varchar(45) DEFAULT NULL,
      `language` varchar(45) DEFAULT NULL,
      `role` varchar(45) DEFAULT NULL,
      `city` varchar(45) DEFAULT NULL,
      `name` varchar(45) DEFAULT NULL,
      PRIMARY KEY (`id`)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
    ```
    
- A script for inserting records into tables
    
    ```sql
    INSERT INTO `Official` VALUES (1,'KR','ko','coach','23090770','Kim');
    INSERT INTO `Official` VALUES (2,'JP','ja','judge','23310360','Nakamura');
    ```
    


### 6. Driver table

- A script for creating tables
    
    ```sql
    CREATE TABLE `Driver` (
      `id` int NOT NULL,
      `name` varchar(45) DEFAULT NULL,
      `license` varchar(45) DEFAULT NULL,
      `security` varchar(45) DEFAULT NULL,
      `language` varchar(45) DEFAULT NULL,
      `FATL_pass` tinyint DEFAULT NULL,
      `FATL_level` varchar(45) DEFAULT NULL,
      `FATL_date` varchar(45) DEFAULT NULL,
      `STLVT_pass` varchar(45) DEFAULT NULL,
      `STLVT_level` varchar(45) DEFAULT NULL,
      `STLVT_date` varchar(45) DEFAULT NULL,
      `STLVT_corp` varchar(45) DEFAULT NULL,
      PRIMARY KEY (`id`)
    ```
    
- A script for inserting records into tables
    
    ```sql
    INSERT INTO `Driver` VALUES (1,'Nam','123456789000000000','1','ko',1,'3','20220910','1','3','20220910','samsung');
    INSERT INTO `Driver` VALUES (2,'Lee','123456789000000001','2','ja',1,'4','20220910','1','4','20220910','samsung');
    INSERT INTO `Driver` VALUES (3,'Kim','123456789000000002','3','en',1,'5','20220910','1','5','20220910','samsung');
    ```
    

## Result from Jupyterbook (colab)


![Screen Shot 2022-10-23 at 9.51.10 PM.png](DATABASE%20MIDTERM%20ASSIGNMENT_12171483_NamChanghyeon%20e1c210998f1a41eea34a51802b797a77/Screen_Shot_2022-10-23_at_9.51.10_PM.png)

![Untitled](DATABASE%20MIDTERM%20ASSIGNMENT_12171483_NamChanghyeon%20e1c210998f1a41eea34a51802b797a77/Untitled.png)

![Untitled](DATABASE%20MIDTERM%20ASSIGNMENT_12171483_NamChanghyeon%20e1c210998f1a41eea34a51802b797a77/Untitled%201.png)

![Untitled](DATABASE%20MIDTERM%20ASSIGNMENT_12171483_NamChanghyeon%20e1c210998f1a41eea34a51802b797a77/Untitled%202.png)

![Untitled](DATABASE%20MIDTERM%20ASSIGNMENT_12171483_NamChanghyeon%20e1c210998f1a41eea34a51802b797a77/Untitled%203.png)

![Untitled](DATABASE%20MIDTERM%20ASSIGNMENT_12171483_NamChanghyeon%20e1c210998f1a41eea34a51802b797a77/Untitled%204.png)

![Untitled](DATABASE%20MIDTERM%20ASSIGNMENT_12171483_NamChanghyeon%20e1c210998f1a41eea34a51802b797a77/Untitled%205.png)

![Untitled](DATABASE%20MIDTERM%20ASSIGNMENT_12171483_NamChanghyeon%20e1c210998f1a41eea34a51802b797a77/Untitled%206.png)
