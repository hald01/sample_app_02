# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Create a main sample user.
User.create(   name: "Example User 0001",
                email: "example0001@railstutorial.org",
                password: "123456",
                password_confirmation: "123456",
                admin: true,
                activated: true,
                activated_at: Time.zone.now
            )
# Generate a bunch of additional users.
for a in 2...5 do
    User.create(   name: "Example User 000#{a}",
                email: "example000#{a}@railstutorial.org",
                password: "123456",
                password_confirmation: "123456",
                activated: true,
                activated_at: Time.zone.now
            )    
    for b in 1..40 do
        users = User.order(:created_at)
        content = "user --#{a}-- comment --000#{b}000--"
        users.each { |user| user.microposts.create!(content: content) }
    end
end
for a in 5..100 do
    User.create(   name: "Example User 000#{a}",
                email: "example000#{a}@railstutorial.org",
                password: "123456",
                password_confirmation: "123456",
                activated: true,
                activated_at: Time.zone.now
            )    
end
# Create following relationships.
users = User.all
user = users.first
following = users[2..50]
followers = users[3..40]
following.each { |followed| user.follow(followed) }
followers.each { |follower| follower.follow(user) }