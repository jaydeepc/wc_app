# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Question.create([
  {
	  question_text: 'How big is your grilling space?',
	  answers: Answer.create([ { answer_text: 'Big' }, { answer_text: 'Small' }])
  },
  {
    question_text: 'How many people do you typically cook for?',
    answers: Answer.create([{ answer_text: 'Few' }, { answer_text: 'Lots' }])
  },
  {
    question_text: 'What style of grill do you prefer?',
    answers: Answer.create([ { answer_text: 'New' }, { answer_text: 'Traditional' }])
  }
])

