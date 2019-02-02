# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

bill = User.new(username: "bill", password: "password")
sally = User.new(username: "sally", password: "password")
tunde = User.new(username: "TUNDE", password: "password")

Message.create(user: bill, body: "Hello everyone!")
Message.create(user: sally, body: "hey there, bill")
Message.create(user: tunde, body: "sup!!")
Message.create(user: bill, body: "I have this really strange thing that happned to me the other day I wanna talk about")
Message.create(user: tunde, body: "I hope it isn't about that turtle")
Message.create(user: bill, body: "How did you know!?")
