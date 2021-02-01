# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

todos1 = Todo.create({title: "Survive", body: "week 11", done: false})
todos2 = Todo.create({title: "PASS THE TEST", body: "WEEK 12", done: false})
todos3 = Todo.create({title: "DO FSP", body: "week 15", done: false})
todos4 = Todo.create({title: "GET JOB", body: "ASAP", done: false})
todos5 = Todo.create({title: "THANK JOSH", body: "right now", done: true})
