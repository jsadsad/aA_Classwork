# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(username: "user1")
user2 = User.create(username: "user2")
user3 = User.create(username: "user3")
user4 = User.create(username: "user4")

poll1 = Poll.create(title: "poll1", user_id: 1)
poll2 = Poll.create(title: "poll2", user_id: 2)
poll3 = Poll.create(title: "poll3", user_id: 3)

q1 = Question.create(body: "can it be break yet?", poll_id: 1)
q2 = Question.create(body: "what time is it?", poll_id: 1)
q3 = Question.create(body: "i dont know?", poll_id: 2)
q4 = Question.create(body: "is this poll 3?", poll_id: 3)

a1 = AnswerChoice.create(response: "no", question_id: 1)
a2 = AnswerChoice.create(response: "yes", question_id: 2)
a3 = AnswerChoice.create(response: "maybe", question_id: 1)
a4 = AnswerChoice.create(response: "lol", question_id: 2)
a5 = AnswerChoice.create(response: "idk", question_id: 3)
a6 = AnswerChoice.create(response: "4", question_id: 4)
a7 = AnswerChoice.create(response: "nope", question_id: 4)

r1 = Response.create(:)
