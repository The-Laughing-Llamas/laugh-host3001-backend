# README

**Name of Application:** Laugh Host:3001

**Overview:** Laugh Host 3001 is a fun and lighthearted application where the user can store and delete their best, silliest, and most revolting recipes to their account. This application was created as a capstone project for the LEARN Academy web development bootcamp. The goal was to upload an app to Render with CRUD functionality, user authentication with Devise, and 60% test coverage.

**Features:** The user can create an account, login, and logout. The user can also create, update, store, and delete recipes.

**Contributors**
<br>In addition to coding and styling, each member that worked on this project had an additional role to fill.
* Enrique - As the Design Lead, Enrique was in control of the look, color scheme, and branding of the project. He created the wireframes, ensured intuitive navigation, and explored responsive and accessible design.
* Greg - As the Project Manager, Greg was responsible for internal communication and oversaw the Trello board. He ensured Trello cards were up-to-date and reflective of the tasks we were going to accomplish. He was also responsible for our Slack and managing external resources.
* Patsy - As our Tech Lead, Patsy had an invested role over our code base and version control. With her strong understanding of the technical aspects of our project, she helped resolve and prevent any issues with our coding, styling, and testing.
* Sean - As our Product Manager, Sean was responsible for the big-picture and making sure the project met all requirements. He was also responsible for ensuring the README contained appropriate information.
* Elyse - As our Instructor, Elyse was responsible for reviewing our code and making sure we stayed on track to completing our project.

**Ruby version:** 3.2.0

**System dependencies**
* 		PostgreSQL
* 		Spec
* 		Devise

**Configuration**
<br> In config/initializers/cors.rb:
*       Comment out line 3
*       Uncomment line 4

**Database creation**
<br> In terminal:
*       rails db:create
*       rails db:migrate

**Database initialization**
<br>In terminal:
*       rails db:seed

**Running the BackEnd**
<br>In terminal:
* 		Clone this project’s repo locally
* 		cd into the project directory
* 		rails db:create
* 		rails db:migrate
* 		rails db:seed
* 		bundle
* 		rails s

**How to run the test suite**
<br> In terminal:
* 		RSpec spec-filename
