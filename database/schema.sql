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