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
Recruiter.destroy_all
Skill.destroy_all


puts "Creating seeds..."
user = User.create!(first_name: "Margot", last_name: "Retif", email: "margot@gmail.com", password: "123456")
positions = Position.create!(title: 'Backend Intern', description: 'Join a great team and become a Ruby master', user: user)
skills = Skill.create!([{name: "backend"}, {name: "frontend"}, {name: "engineer"}, {name: "mobile"}, {name: "marketing"}, {name: "intern"}, {name: "sales"}, {name: "communication"}])
recruiters = Recruiter.create!([
  {first_name: "Stan", email: "stan@drawbotics.com", skills: [skills[0], skills[1], skills[2]]},
  {first_name: "Sandjiv", email: "sandjiv@drawbotics.com", skills: [skills[0], skills[2], skills[5]]},
  {first_name: "Cedric", email: "cedric@drawbotics.com", skills: [skills[4] ] },
  {first_name: "Leo", email: "leo@drawbotics.com", skills: [skills[1], skills[3]]},
  {first_name: "Audrey", email: "audrey@drawbotics.com", skills: [skills[6], skills[7]]},
  {first_name: "Nick", email: "nick@drawbotics.com", skills: [skills[1], skills[3]]},
  {first_name: "Muriel", email: "muriel@drawbotics.com", skills: [skills[5], skills[6]]},
  {first_name: "Lorenzo", email: "lorenzo@drawbotics.com", skills: [skills[1]]},
  {first_name: "Ryan", email: "ryan@drawbotics.com", skills: [skills[6], skills[7]]},
  {first_name: "Lajos", email: "lajos@drawbotics.com", skills: [skills[1], skills[3]]}
  ])
puts "Finished!"


