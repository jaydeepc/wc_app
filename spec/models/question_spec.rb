require "rails_helper"

describe Question do
  describe '.all' do
    it 'returns a list of questions' do
      expect(Question.all).to have(3).items
    end

    it 'returns questions with a collection of answers' do
      Question.all.each do |question|
        expect(question.answers).not_to be_empty
      end
    end
  end
end
