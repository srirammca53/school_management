# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Super_admin credentials
User.create(first_name: "super", last_name:"admin", phone:"1234567890", email:"admin@example.com", password:"12345678", password_confirmation:"12345678", role_id: 1)

# school admin
User.create(first_name: "school", last_name:"admin", phone:"1234567891", email:"school@example.com", password:"12345678", password_confirmation:"12345678", role_id: 2)


# students
User.create(first_name: "student1", last_name:"user", phone:"1234567892", email:"student1@example.com", password:"12345678", password_confirmation:"12345678", role_id: 3)

User.create(first_name: "student2", last_name:"user", phone:"1234567893", email:"student2@example.com", password:"12345678", password_confirmation:"12345678", role_id: 3)

User.create(first_name: "student3", last_name:"uset", phone:"1234567894", email:"student3@example.com", password:"12345678", password_confirmation:"12345678", role_id: 3)



# Roles
Role.create(name: "super_admin") #role_id =1
Role.create(name: "school_admin")#role_id =2
Role.create(name: "student")  #role_id =3


#Schools Data

Institute.create(name: "Open Source technologies training", address: "Ashok Nagar", city: "Kakinada", email: "opt.example.com", phone:"324354657687")
Institute.create(name: "GSD training", address: "Ram Nagar", city: "Vizag", email: "gsd.example.com", phone:"324354657621")
Institute.create(name: "KMS training", address: "Vidya Nagar", city: "Hyderabad", email: "kms.example.com", phone:"324354653487")



#Batches Data

Batch.create(number: 1, start_date: Date.today, end_date: Date.today+30.days, timee: Time.new("05:00:00"), institute_id: 1)
Batch.create(number: 2, start_date: Date.today, end_date: Date.today+30.days,  timee: Time.new("18:00:00"), institute_id: 2)


#Courses Data

Course.create(name: "Ruby", version: "3.1.0", fee: 10000, batch_id: 1)
Course.create(name: "Rails", version: "7.1.0", fee: 12000, batch_id: 2)
Course.create(name: "Pega", version: "1.14.0", fee: 30000)


#Fees Details

Fee.create( batch_id: 1, course_id: 1, user_id: 5, total_fee_paid: true)
Fee.create( batch_id: 1, course_id: 1, user_id: 6, total_fee_paid: true)
Fee.create( batch_id: 2, course_id: 1, user_id: 6, total_fee_paid: true)
