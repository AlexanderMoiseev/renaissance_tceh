# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
['user', 'tech', 'insure'].each do |role|
  Role.find_or_create_by({name: role})
end

Car.destroy_all
User.destroy_all
Insurance.destroy_all
Event.destroy_all
user_user = User.create! email: 'angry_user@test.com', password: '123456', role: Role.find_by_name("user")
user_tech = User.create! email: 'lazy_tech@test.com', password: '123456', role: Role.find_by_name("tech")
user_insure = User.create! email: 'gready_insure@test.com', password: '123456', role: Role.find_by_name("insure")

car = Car.create! name: 'audi rs', uin: 'а741ка', users: [user_user,user_tech,user_insure]
insurance = Insurance.create! uin: "112233", users: [user_user,user_tech,user_insure], car: car

