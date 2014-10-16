require_relative '../pages/home_page'
require_relative '../pages/question_page'

Given(/^navigate to first question$/) do
  @question_page = QuestionPage.new
  @question_page.navigate_to_question_page
end

Given(/^that he is on QuestionPageOne$/) do
  step 'navigate to first question'
end

Then(/^he sees the following expected question 'How big is your grilling space\?', answers 'Big' and 'Small'$/) do
  verify_attributes('How big is your grilling space?', 'Big', 'Small')
end

Then(/^he sees the following expected question 'How many people do you typically cook for\?', answers 'Few' and 'Lots'$/) do
  verify_attributes('How many people do you typically cook for?', 'Few', 'Lots')
end

Then(/^he sees the following expected question 'What style of grill do you prefer\?', answers 'New' and 'Traditional'$/) do
  verify_attributes('What style of grill do you prefer?', 'New', 'Traditional')
end

Given(/^that he is on QuestionPageTwo$/) do
  step 'navigate to first question'
  @question_page.answer_questions('Big')
end

Given(/^that he is on QuestionPageThree$/) do
  step 'navigate to first question'
  @question_page.answer_questions('Big')
  @question_page.answer_questions('Few')
end

Given(/^that he has answered all the questions with combination \(Small, Few, Traditional\)$/) do
  step 'navigate to first question'
  @recommendation_page = @question_page.complete_questionnaire('Small', 'Few', 'Traditional')
end

Then(/^he gets 'American Gourmet charcoal grill' according to the combination$/) do
  expect(@recommendation_page).to have_content('American Gourmet charcoal grill')
end

Given(/^that he has answered all the questions with combination \(Small, Lots, Traditional\)$/) do
  step 'navigate to first question'
  @recommendation_page = @question_page.complete_questionnaire('Small', 'Lots', 'Traditional')
end

Then(/^he gets 'Char-Broil 2-burner gas grill' according to the combination$/) do
  expect(@recommendation_page).to have_content('Char-Broil 2-burner gas grill')
end

Given(/^that he has answered all the questions with combination \(Small, Few, New\)$/) do
  step 'navigate to first question'
  @recommendation_page = @question_page.complete_questionnaire('Small', 'Few', 'New')
end

Then(/^he gets 'Patio Bistro 240 TRU-Infrared electric grill' according to the combination$/) do
  expect(@recommendation_page).to have_content('Patio Bistro 240 TRU-Infrared electric grill')
end

Given(/^that he has answered all the questions with combination \(Small, Lots, New\)$/) do
  step 'navigate to first question'
  @recommendation_page = @question_page.complete_questionnaire('Small', 'Lots', 'New')
end

Then(/^he gets 'Commercial TRU-Infrared 2-burner gas grill' according to the combination$/) do
  expect(@recommendation_page).to have_content('Commercial TRU-Infrared 2-burner gas grill')
end

Given(/^that he has answered all the questions with combination \(Big, Few, Traditional\)$/) do
  step 'navigate to first question'
  @recommendation_page = @question_page.complete_questionnaire('Big', 'Few', 'Traditional')
end

Then(/^he gets 'Char-Broil Classic 3-burner gas grill' according to the combination$/) do
  expect(@recommendation_page).to have_content('Char-Broil Classic 3-burner gas grill')
end

Given(/^that he has answered all the questions with combination \(Big, Lots, Traditional\)$/) do
  step 'navigate to first question'
  @recommendation_page = @question_page.complete_questionnaire('Big', 'Lots', 'Traditional')
end

Then(/^he gets 'Char-Broil Classic 6-burner gas grill' according to the combination$/) do
  expect(@recommendation_page).to have_content('Char-Broil Classic 6-burner gas grill')
end

Given(/^that he has answered all the questions with combination \(Big, Few, New\)$/) do
  step 'navigate to first question'
  @recommendation_page = @question_page.complete_questionnaire('Big', 'Few', 'New')
end

Then(/^he gets 'Performance TRU-Infrared 3-burner gas grill' according to the combination$/) do
  expect(@recommendation_page).to have_content('Performance TRU-Infrared 3-burner gas grill')
end

Given(/^that he has answered all the questions with combination \(Big, Lots, New\)$/) do
  step 'navigate to first question'
  @recommendation_page = @question_page.complete_questionnaire('Big', 'Lots', 'New')
end

Then(/^he gets 'Performance TRU-Infrared 4-burner gas grill' according to the combination$/) do
  expect(@recommendation_page).to have_content('Performance TRU-Infrared 4-burner gas grill')
end

def verify_attributes(question_text, answer_option_1, answer_option_2)
  expect(page).to have_content(question_text)
  expect(find_button(answer_option_1)).to be_truthy
  expect(find_button(answer_option_2)).to be_truthy
end
