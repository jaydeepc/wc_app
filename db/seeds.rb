# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Question.create({
	question_text: 'What is the answer to life, the universe and everything?',
	answers: Answer.create([ { answer_text: '42' }, { answer_text: 'bacon' }])
})

