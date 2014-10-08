class QuestionsController < ApplicationController
  def index
    @question = Question.first
  end
end
