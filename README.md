Basic Sinatra Login Template
===========

This web application provides the most basic template for users to sign up, login, and logout.

#Getting Started

###Get it running

To get started, clone the repository and `cd` to that folder. Then run

`$ bundle install`
`$ rake db:migrate` which will both create the database and migrate it
`$ shotgun` which will start the server

You can then access the website by navigating to `http://localhost:9393/`

###Adding Users

To create your first user, navigate to "Sign Up" and fill in the necessary information.
Passwords must be at least 6 characters long, with at least on number, one capital letter, and one lower-case letter.
This can be modified in app/models/user

###Reset the Database

To reset the database, run

`rake db:reset`

Also, to seed with a dummy user with name `name`, email `email@email.com` and pasword `4321Qa`, run

`rake db:seed`

#Contact Me

Feel free to reach me at info@stevenspiel.com for additional questions.