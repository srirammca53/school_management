# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

[Version]

* Ruby Version : ruby 2.6.10p210 (2022-04-12 revision 67958) [x64-mingw32]
* Rails Version : Rails 5.1.7

[System Dependecies]

1. ActiveSupport::CurrentAttributes - Version 0.2
   This gem is used to save and handle the current user object and details

Database Table details:

1.Users
2.Institutes
3.Batches
4.Courses
5.Fees
6.Role

Db Seed :

For master sample data Seed file have few records: Run "rake db:seed" or "rails db:seed"

To Run the application:
1. Clone the application from github
2. bundled install
3. rake db:migrate or rails db:migrate
4. rails s

Open browser and hit localhost:3000

