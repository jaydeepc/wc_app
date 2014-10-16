require_relative '../pages/recommendation_page'

class QuestionPage

  def initialize

  end

  def navigate_to_question_page
    visit '/questions'
    click_button 'Start'
    return QuestionPage.new
  end

  def answer_questions(answer)
    click_button answer
    return QuestionPage.new
  end

  def complete_questionnaire(answer1, answer2, answer3)
    click_button answer1
    click_button answer2
    click_button answer3
    return RecommendationPage.new
  end

end