# crud-api-assignment
# Disney Characters CRUD API - Spring Boot Demo

A comprehensive RESTful API for managing Disney character records, built with Spring Boot, Spring Data JPA, and PostgreSQL. This project demonstrates fundamental concepts for building APIs with Spring Boot.

## Table of Contents

- [What is This Project?](#what-is-this-project)
- [Technology Stack](#technology-stack)
- [Installation & Setup](#installation--setup)
- [Running the Application](#running-the-application)
- [Project Architecture](#project-architecture)
- [API Endpoints](#api-endpoints)
- [Database Schema](#database-schema)
- [Demo Video](#demo-video)

---

## What is This Project?

This is a **CRUD API** (Create, Read, Update, Delete) that manages Disney character records. It demonstrates:

- How to build a REST API with Spring Boot
- How to connect to a PostgreSQL database using JPA
- How to structure a Spring Boot application with layers (Controller, Service, Repository)
- How to handle HTTP requests and responses
- How to perform database operations

**CRUD stands for:**

- **Create** – Add new character records
- **Read** – Retrieve character records
- **Update** – Modify existing character records
- **Delete** – Remove character records

---

## Technology Stack

| Technology | Version | Purpose |
|-----------|--------|--------|
| Java | 25 | Programming language |
| Spring Boot | 4.x | Backend framework |
| Spring Data JPA | Latest | ORM layer for database access |
| Hibernate | Latest | JPA implementation |
| PostgreSQL | Latest | Relational database |
| Maven | Latest | Build and dependency management |

---

## Installation & Setup

### Prerequisites

Before you begin, ensure you have installed:

1. **Java 25 JDK**

Verify installation:

```bash
java -version
```

2. **Neon.tech PostgreSQL Database**

This project uses **Neon.tech**, a cloud-based PostgreSQL database.

Steps:

1. Go to https://neon.tech  
2. Create a free account  
3. Create a new database  
4. Copy your connection string  

3. **Git**

Download from:

https://git-scm.com/

---

### Clone the Repository

```bash
git clone <repository-url>
cd crud-api-assignment
```

---

### Install Dependencies

Mac/Linux

```bash
./mvnw clean install
```

Windows

```cmd
mvnw.cmd clean install
```

---

### Database Configuration

Open the file:

```
src/main/resources/application.properties
```

Add your database configuration:

```properties
spring.application.name=crud-api

spring.datasource.url=jdbc:postgresql://host:5432/neondb
spring.datasource.username=your_neon_username
spring.datasource.password=your_neon_password

spring.jpa.hibernate.ddl-auto=update
```

---

## Running the Application

Run the project using Maven Wrapper.

Mac/Linux

```bash
./mvnw spring-boot:run
```

Windows

```cmd
mvnw.cmd spring-boot:run
```

The application will start on:

```
http://localhost:8080
```

---

## Project Architecture

This project follows a **layered architecture**.

```
Client (Postman / Browser)
        |
        ▼
Controller Layer
(CharacterApiController)
Handles HTTP requests
        |
        ▼
Service Layer
(CharacterService)
Contains business logic
        |
        ▼
Repository Layer
(CharacterRepository)
Communicates with database
        |
        ▼
PostgreSQL Database
```

### Folder Structure

```
src/main/java/com/example/demo/

├── CrudApiApplication.java
├── CharacterApiController.java
├── CharacterService.java
├── CharacterRepository.java
└── Character.java
```

---

# API Endpoints

Base URL:

```
http://localhost:8080/api/characters
```

---

## 1 Get All Characters

```
GET /api/characters
```

Returns all characters.

Example request:

```bash
curl http://localhost:8080/api/characters
```

Example response:

```json
[
 {
  "characterId": 1,
  "name": "Ariel",
  "universe": "The Little Mermaid",
  "role": "Princess",
  "species": "Mermaid",
  "age": 16
 },
 {
  "characterId": 2,
  "name": "Belle",
  "universe": "Beauty and the Beast",
  "role": "Princess",
  "species": "Human",
  "age": 17
 }
]
```

---

## 2 Get Character by ID

```
GET /api/characters/{id}
```

Example request:

```bash
curl http://localhost:8080/api/characters/3
```

Example response:

```json
{
 "characterId": 3,
 "name": "Ariel",
 "universe": "The Little Mermaid",
 "role": "Princess",
 "species": "Mermaid",
 "age": 16
}
```

---

## 3 Add a New Character

```
POST /api/characters
```

Example request:

```bash
curl -X POST http://localhost:8080/api/characters \
-H "Content-Type: application/json" \
-d '{
"name":"Elsa",
"universe":"Frozen",
"role":"Queen",
"species":"Human",
"age":24
}'
```

Example response:

```json
{
 "characterId": 5,
 "name": "Elsa",
 "universe": "Frozen",
 "role": "Queen",
 "species": "Human",
 "age": 24
}
```

---

## 4 Update a Character

```
PUT /api/characters/{id}
```

Example request:

```bash
curl -X PUT http://localhost:8080/api/characters/1 \
-H "Content-Type: application/json" \
-d '{
"name":"Ariel",
"universe":"The Little Mermaid",
"role":"Princess",
"species":"Mermaid",
"age":17
}'
```

---

## 5 Delete a Character

```
DELETE /api/characters/{id}
```

Example request:

```bash
curl -X DELETE http://localhost:8080/api/characters/3
```

Response:

```
204 No Content
```

---

## 6 Get Characters by Universe

```
GET /api/characters/universe/{universe}
```

Example request:

```bash
curl http://localhost:8080/api/characters/universe/Frozen
```

Example response:

```json
[
 {
  "characterId": 5,
  "name": "Elsa",
  "universe": "Frozen",
  "role": "Queen",
  "species": "Human",
  "age": 24
 }
]
```

---

## 7 Search Characters by Name

```
GET /api/characters/search?name={name}
```

Example request:

```bash
curl "http://localhost:8080/api/characters/search?name=rap"
```

Example response:

```json
[
 {
  "characterId": 4,
  "name": "Rapunzel",
  "universe": "Tangled",
  "role": "Princess",
  "species": "Human",
  "age": 18
 }
]
```

---

# Database Schema

Table used by the application:

```
characters
```

| Column | Type | Description |
|------|------|------|
| character_id | SERIAL | Primary key |
| name | VARCHAR | Character name |
| universe | VARCHAR | Movie or franchise |
| role | VARCHAR | Character role |
| species | VARCHAR | Character species |
| age | INTEGER | Character age |

Example SQL:

```sql
CREATE TABLE characters (
 character_id SERIAL PRIMARY KEY,
 name VARCHAR(255),
 universe VARCHAR(255),
 role VARCHAR(255),
 species VARCHAR(255),
 age INTEGER
);
```

---

## Demo Video

```
https://uncg-my.sharepoint.com/:v:/g/personal/hyabukhass_uncg_edu/IQCTOzIu_MDJTYJKyPCvFM0PAb4LVsCCkcKZC0C05gHuqWQ?nav=eyJyZWZlcnJhbEluZm8iOnsicmVmZXJyYWxBcHAiOiJTdHJlYW1XZWJBcHAiLCJyZWZlcnJhbFZpZXciOiJTaGFyZURpYWxvZy1MaW5rIiwicmVmZXJyYWxBcHBQbGF0Zm9ybSI6IldlYiIsInJlZmVycmFsTW9kZSI6InZpZXcifX0%3D&e=XV7Dp6
```

