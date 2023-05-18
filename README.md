# DoctorHealthCare

Doctor Register (CRUD Full Function with Admin Part Web Dynamic Project)
Used Tools

Mysql - MySQL Workbench 8.0 CE

java - java version "18.0.2" 2022-07-19
Java(TM) SE Runtime Environment (build 18.0.2+9-61)
Java HotSpot(TM) 64-Bit Server VM (build 18.0.2+9-61, mixed mode, sharing)

Apache tomcat 9.0

MySql-connector-java-8.0.30

Eclipse IDE for Java Developers - 2022-03

SQL

create database healthCare;
use healthCare;
CREATE TABLE doctors (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(120) NOT NULL,
    email VARCHAR(220) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    password VARCHAR(100) NOT NULL,
    address VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);
INSERT INTO doctors (Name, Email, Password, Phone, Address) VALUES ('Dr. John Smith', 'john.smith@example.com', 'password123', '1234567890', '123 Main Street');
INSERT INTO doctors (Name, Email, Password, Phone, Address) VALUES ('Dr. Emily Johnson', 'emily.johnson@example.com', 'pass1234', '9876543210', '456 Elm Avenue');
INSERT INTO doctors (Name, Email, Password, Phone, Address) VALUES ('Dr. Michael Davis', 'michael.davis@example.com', 'securepwd', '5551234567', '789 Oak Drive');
INSERT INTO doctors (Name, Email, Password, Phone, Address) VALUES ('Dr. Sarah Thompson', 'sarah.thompson@example.com', 'doctorpass', '1112223333', '321 Pine Lane');
INSERT INTO doctors (Name, Email, Password, Phone, Address) VALUES ('Dr. David Wilson', 'david.wilson@example.com', 'doctor123', '9998887777', '987 Maple Street');
INSERT INTO doctors (Name, Email, Password, Phone, Address) VALUES ('Dr. Jennifer Lee', 'jennifer.lee@example.com', 'mypassword', '4445556666', '555 Cedar Avenue');
INSERT INTO doctors (Name, Email, Password, Phone, Address) VALUES ('Dr. Robert Brown', 'robert.brown@example.com', 'pass4321', '7778889999', '789 Oak Drive');
INSERT INTO doctors (Name, Email, Password, Phone, Address) VALUES ('Dr. Jessica Miller', 'jessica.miller@example.com', 'doctor321', '2223334444', '123 Elm Street');
INSERT INTO doctors (Name, Email, Password, Phone, Address) VALUES ('Dr. William Thompson', 'william.thompson@example.com', 'securepass', '9990001111', '456 Pine Lane');
INSERT INTO doctors (Name, Email, Password, Phone, Address) VALUES ('Dr. Amanda Davis', 'amanda.davis@example.com', 'doctorpass123', '6667778888', '987 Maple Avenue');
INSERT INTO doctors (Name, Email, Password, Phone, Address) VALUES ('Dr. Andrew Wilson', 'andrew.wilson@example.com', 'password4321', '2221114444', '321 Oak Drive');
INSERT INTO doctors (Name, Email, Password, Phone, Address) VALUES ('Dr. Emily Johnson', 'emily.johnson@example.com', 'pass1234', '3334445555', '654 Cedar Street');
INSERT INTO doctors (Name, Email, Password, Phone, Address) VALUES ('Dr. James Smith', 'james.smith@example.com', 'mypassword123', '8889990000', '789 Elm Avenue');
INSERT INTO doctors (Name, Email, Password, Phone, Address) VALUES ('Dr. Olivia Brown', 'olivia.brown@example.com', 'pass5678', '1112223333', '432 Pine Lane');
INSERT INTO doctors (Name, Email, Password, Phone, Address) VALUES ('Dr. Benjamin Johnson', 'benjamin.johnson@example.com', 'doctor5678', '5556667777', '876 Cedar Avenue');
INSERT INTO doctors (Name, Email, Password, Phone, Address) VALUES ('Dr. Sophia Davis', 'sophia.davis@example.com', 'securepwd123', '9998887777', '321 Maple Street');
INSERT INTO doctors (Name, Email, Password, Phone, Address) VALUES ('Dr. Samuel Wilson', 'samuel.wilson@example.com', 'doctorpass5678', '4445556666', '765 Elm Lane');
INSERT INTO doctors (Name, Email, Password, Phone, Address) VALUES ('Dr. Ava Thompson', 'ava.thompson@example.com', 'password5678', '7778889999', '987 Cedar Drive');
INSERT INTO doctors (Name, Email, Password, Phone, Address) VALUES ('Dr. Noah Miller', 'noah.miller@example.com', 'pass9876', '2223334444', '123 Pine Avenue');
INSERT INTO doctors (Name, Email, Password, Phone, Address) VALUES ('Dr. Isabella Wilson', 'isabella.wilson@example.com', 'doctor9876', '9990001111', '456 Maple Lane');

select * from doctors;
