# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

r1 = Role.create(description: "Admin")
r2 = Role.create(description: "Client")
u1 = User.create(provider:"twitter" uid:"137936082" name:"dn1d20")
u1.roles << r1