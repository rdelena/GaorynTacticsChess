# Gaoryn Tactics Chess

Capstone Final Project for Austin Coding Academy. First attempt in game development for a simple Chess-like Fantasy Tactical game. The purpose of the game is to entertain players with a fun, brain teasing, tactical game.

- Set in the fantasy world of Gaoryn, this game plans to simulate Chess-like move set with a tactical Role-Playing Game combat system.
- Set in an 8X8 grid with 64 squares total, each chess piece equivalent will have a class and set attack moves.
- Two Opposing teams (Computer or Player Controlled) will battle using turn-based combat to try and overthrow the opposing King.

## Build Status:

- The current game is under development. No set date for Alpha or Beta testing as of yet.

<!-- Will add over time
## Table of Contents
## Requirements
## Installation
## Configuration
## Troubleshooting & FAQ  -->

## Data:

The data required for this project will be minimal. Most of the content will be generated through the game itself. Data will be needed for certain aspects such:

- Login with a username, email, & password.
- Reading, Posting, Editing, & Deleting a Comment.
- Rating the game for the player satisfaction.

This lists the main set of Data but can be subject to change over time.

### Entity Relationship Diagram

![Capstone ER Diagram](img/Capstone%20ERD.jpg "er_diagram")

- This ER diagram consists of the 3 tables that will be used for this project.
  - Users: Entity holding the Primary key of (id) along with username, email, password. This will consist of the login used to access the right to comment and leave a rating.
  - Comments: Entity holding foreign key of (user_id) along with comment_text & comment_time. This will store the comments left by an individual user along with their timestamp of when the comment was left.
  - Ratings: Entity holding foreign key of (user_id) along with rate which allows the user to rate the game on a scale of 0-5 stars.

#### Data Relationship:

- There can only be one (and only one) user to one or many comments.
- One (and only one) user to one or many ratings. (subject to change)

#### Database Intructions:

- Inside the terminal, use the command "npm start" to launch nodemon alowing testing to the database.
- Will fully incorporate a working database using AWS in the future.
- Will incorporate a working login system with password encryption in the future.

## Tech/Frameworks Planned on Using:

- AWS Cloud System
- Unity Game Engine
- Aesprite: Pixel Art Editor
- VS Code Editor
- C#
- HTML/CSS/JavaScript
- React.js
- Node.js
- Express.js
- mySQL
