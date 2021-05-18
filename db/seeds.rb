# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Position.destroy_all
User.destroy_all

puts "Creating seeds..."
user = User.create!(first_name: "margot", last_name: "retif", email: "margot@gmail.com", password: "123456")
positions = Position.create!(title: 'Backend Intern', description: 'join a great team and become a ruby master', user: user)
puts "Created #{positions.title}"
puts "Finished!"
