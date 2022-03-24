# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Create a main sample user.
User.create(   name: "Example User 0001", email: "example0001@railstutorial.org",
                password: "123456", password_confirmation: "123456",
                admin: true
            )
# Generate a bunch of additional users.
for a in 2..100 do
    User.create(   name: "Example User 000#{a}", email: "example000#{a}@railstutorial.org",
                password: "123456", password_confirmation: "123456" 
            )
    
end