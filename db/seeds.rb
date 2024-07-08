# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


User.create(first_name: "Luke", last_name: "Skywalker", email: "luke@email.com", username: "luke2011", password: "password", password_confirmation: "password", admin: true, prof_image: "https://media.gettyimages.com/id/1370502155/vector/pixel-design-of-a-rocket-icon.jpg?s=612x612&w=gi&k=20&c=Y7uvbap6JMHAzA5ILWwkSy3vmr7r5jCVBH6tn3S4XzA=", about_me: "Edit this section to tell the community a little about yourself.")
User.create(first_name: "Harley", last_name: "Quinn", email: "harley@email.com", username: "harley2011", password: "password", password_confirmation: "password", admin: false, prof_image: "https://media.gettyimages.com/id/1370502155/vector/pixel-design-of-a-rocket-icon.jpg?s=612x612&w=gi&k=20&c=Y7uvbap6JMHAzA5ILWwkSy3vmr7r5jCVBH6tn3S4XzA=", about_me: "Edit this section to tell the community a little about yourself.")
User.create(first_name: "Jordan", last_name: "O'Boyle", email: "jordan@email.com", username: "jordan2011", password: "password", password_confirmation: "password", admin: false, prof_image: "https://media.gettyimages.com/id/1370502155/vector/pixel-design-of-a-rocket-icon.jpg?s=612x612&w=gi&k=20&c=Y7uvbap6JMHAzA5ILWwkSy3vmr7r5jCVBH6tn3S4XzA=", about_me: "Edit this section to tell the community a little about yourself.")
User.create(first_name: "John", last_name: "Sheppard", email: "john@email.com", username: "john2011", password: "password", password_confirmation: "password", admin: false, prof_image: "https://media.gettyimages.com/id/1370502155/vector/pixel-design-of-a-rocket-icon.jpg?s=612x612&w=gi&k=20&c=Y7uvbap6JMHAzA5ILWwkSy3vmr7r5jCVBH6tn3S4XzA=", about_me: "Edit this section to tell the community a little about yourself.")
User.create(first_name: "Bob", last_name: "Belcher", email: "bob@email.com", username: "bob2011", password: "password", password_confirmation: "password", admin: false, prof_image: "https://media.gettyimages.com/id/1370502155/vector/pixel-design-of-a-rocket-icon.jpg?s=612x612&w=gi&k=20&c=Y7uvbap6JMHAzA5ILWwkSy3vmr7r5jCVBH6tn3S4XzA=", about_me: "Edit this section to tell the community a little about yourself.")