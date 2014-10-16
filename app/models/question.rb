class Question
  include ActiveModel::Model

  attr_accessor :text, :answers

  def self.all
    [{
      text: 'How big is your grilling space?',
      answers: [ { text: 'Big' }, { text: 'Small' }]
    },
    {
      text: 'How many people do you typically cook for?',
      answers: [{ text: 'Few' }, { text: 'Lots' }]
    },
    {
      text: 'What style of grill do you prefer?',
      answers: [ { text: 'New' }, { text: 'Traditional' }]
    }]
  end
end
