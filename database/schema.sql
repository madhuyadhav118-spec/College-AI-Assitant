-- ======================================
-- College AI Assistant Database Schema
-- Author: Madhu Yadhav
-- Version: 1.0
-- ======================================

CREATE DATABASE IF NOT EXISTS college_ai_assistant;

USE college_ai_assistant;

-- ===========================================
-- USERS TABLE
-- ===========================================

CREATE TABLE users (

    user_id INT AUTO_INCREMENT PRIMARY KEY,

    full_name VARCHAR(100) NOT NULL,

    email VARCHAR(100) NOT NULL UNIQUE,

    password VARCHAR(255) NOT NULL,

    role ENUM('ADMIN','FACULTY','STUDENT') NOT NULL,

    phone VARCHAR(15),

    profile_image VARCHAR(255),

    is_active BOOLEAN DEFAULT TRUE,

    last_login TIMESTAMP NULL,

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    ON UPDATE CURRENT_TIMESTAMP

);

-- ===========================================
-- STUDENTS TABLE
-- Stores student academic details
-- ===========================================

CREATE TABLE students (

    student_id INT AUTO_INCREMENT PRIMARY KEY,

    user_id INT NOT NULL,

    roll_number VARCHAR(30) NOT NULL UNIQUE,

    admission_number VARCHAR(30) UNIQUE,

    department VARCHAR(100) NOT NULL,

    year INT NOT NULL,

    semester INT NOT NULL,

    section VARCHAR(10),

    gender VARCHAR(10),

    date_of_birth DATE,

    address TEXT,

    parent_name VARCHAR(100),

    parent_phone VARCHAR(15),

    blood_group VARCHAR(5),

    admission_date DATE,

    status ENUM('ACTIVE','GRADUATED','SUSPENDED')
        DEFAULT 'ACTIVE',

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP,

    FOREIGN KEY (user_id)
        REFERENCES users(user_id)

);