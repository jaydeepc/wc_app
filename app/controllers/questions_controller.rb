class QuestionsController < ApplicationController
  def index
    @questions = Question.all.map {|q| {text: q.question_text, answers: q.answers.map {|answer| {id: answer.id, text: answer.answer_text}}} }
  end
end

