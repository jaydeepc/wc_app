class QuestionsController < ApplicationController
  def index
    @question = Question.first
    @answer_map = @question.answers.map do |answer|
      { id: answer.id, text: answer.answer_text }
    end
  end
end

