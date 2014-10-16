Feature: As Peter
  I want to answer questions
  So that I can get the right grill recommendation
  
  @regression @question
  Scenario Outline: Verify Question Pages has expected attributes
    Given that he is on <QuestionPage>
    Then he sees the following expected question '<Question>', answers '<FirstAnswerOption>' and '<SecondAnswerOption>'

  Examples:
      | QuestionPage | Question | FirstAnswerOption | SecondAnswerOption |
      | QuestionPageOne | How big is your grilling space? | Big | Small|
      | QuestionPageTwo | How many people do you typically cook for? | Few | Lots |
      | QuestionPageThree | What style of grill do you prefer? | New | Traditional|


  @regression @question
  Scenario Outline: Verify user gets correct Recommendation after answering all the questions
    Given that he has answered all the questions with combination (<answer1>, <answer2>, <answer3>)
    Then he gets <recommendation> according to the combination

  Examples:
      | answer1 | answer2 | answer3 | recommendation |
      | Small | Few | Traditional | 'American Gourmet charcoal grill' |
      | Small | Lots | Traditional | 'Char-Broil 2-burner gas grill'  |
      | Small | Few | New | 'Patio Bistro 240 TRU-Infrared electric grill' |
      | Small | Lots | New | 'Commercial TRU-Infrared 2-burner gas grill' |
      | Big | Few | Traditional | 'Char-Broil Classic 3-burner gas grill'  |
      | Big | Lots | Traditional | 'Char-Broil Classic 6-burner gas grill' |
      | Big | Few | New | 'Performance TRU-Infrared 3-burner gas grill' |
      | Big | Lots | New | 'Performance TRU-Infrared 4-burner gas grill' |