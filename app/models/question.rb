class Question
  include ActiveModel::Model

  attr_accessor :text, :answers

  def self.all
    [Question.new(
      text: 'How big is your grilling space?',
      answers: [ { text: 'Big' }, { text: 'Small' }]
    ),
    Question.new(
      text: 'How many people do you typically cook for?',
      answers: [{ text: 'Few' }, { text: 'Lots' }]
    ),
    Question.new(
      text: 'What style of grill do you prefer?',
      answers: [ { text: 'New' }, { text: 'Traditional' }]
    )]
  end
end
