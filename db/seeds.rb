# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


# User.create(first_name: "Luke", last_name: "Skywalker", email: "luke@email.com", username: "luke2011", password: "password", password_confirmation: "password", admin: true, prof_image: "https://media.gettyimages.com/id/1370502155/vector/pixel-design-of-a-rocket-icon.jpg?s=612x612&w=gi&k=20&c=Y7uvbap6JMHAzA5ILWwkSy3vmr7r5jCVBH6tn3S4XzA=", about_me: "Edit this section to tell the community a little about yourself.")
# User.create(first_name: "Harley", last_name: "Quinn", email: "harley@email.com", username: "harley2011", password: "password", password_confirmation: "password", admin: false, prof_image: "https://media.gettyimages.com/id/1370502155/vector/pixel-design-of-a-rocket-icon.jpg?s=612x612&w=gi&k=20&c=Y7uvbap6JMHAzA5ILWwkSy3vmr7r5jCVBH6tn3S4XzA=", about_me: "Edit this section to tell the community a little about yourself.")
# User.create(first_name: "Jordan", last_name: "O'Boyle", email: "jordan@email.com", username: "jordan2011", password: "password", password_confirmation: "password", admin: false, prof_image: "https://media.gettyimages.com/id/1370502155/vector/pixel-design-of-a-rocket-icon.jpg?s=612x612&w=gi&k=20&c=Y7uvbap6JMHAzA5ILWwkSy3vmr7r5jCVBH6tn3S4XzA=", about_me: "Edit this section to tell the community a little about yourself.")
# User.create(first_name: "John", last_name: "Sheppard", email: "john@email.com", username: "john2011", password: "password", password_confirmation: "password", admin: false, prof_image: "https://media.gettyimages.com/id/1370502155/vector/pixel-design-of-a-rocket-icon.jpg?s=612x612&w=gi&k=20&c=Y7uvbap6JMHAzA5ILWwkSy3vmr7r5jCVBH6tn3S4XzA=", about_me: "Edit this section to tell the community a little about yourself.")
# User.create(first_name: "Bob", last_name: "Belcher", email: "bob@email.com", username: "bob2011", password: "password", password_confirmation: "password", admin: false, prof_image: "https://media.gettyimages.com/id/1370502155/vector/pixel-design-of-a-rocket-icon.jpg?s=612x612&w=gi&k=20&c=Y7uvbap6JMHAzA5ILWwkSy3vmr7r5jCVBH6tn3S4XzA=", about_me: "Edit this section to tell the community a little about yourself.")

#Genres Seeds
cats = ["RPG-Role Playing Game", "Adventure", "Sports", "Puzzle", "Stealth", "Platformer", "Strategy", "Metroidvania", "Action", "Simulation", "MMO-RPG, Massively Multiplayer Online", "Survival", "Real Time Strategy", "Battle Royale", "Fighting", "Shooter", "Survival Horror", "First Person Shooter", "Massively Multiplayer Online", "Tactical RPG"]

exs = ["Final Fantasy", "Legen of Zelda", "Madden 2018", "Tetris", "Splinter Cell", "Super Mario World", "XCOM 2", "Ori and the Blind Forrest", "Uncharted", "The Sims 4", "World of Warcraft", "Minecraft", "Starcraft 2", "PUB-G", "Street Fighter", "Contra",
"Resident Evil 4", "Call of Duty: Modern Warfare", "EVE Online", "Final Fantasy Tactics"]

i = 0
while i < cats.length
  genre             = Genre.new()
  genre.type        = cats[i]
  genre.description = Faker::Lorem.paragraph(sentence_count: 4, supplemental: true, random_sentences_to_add: 4)
  genre.example     = exs[i]
  genre.save
end
