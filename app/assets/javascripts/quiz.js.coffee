class Quiz
  constructor: (@questions, @url) ->
    @answers = []
    @recommendation = ko.observable()
    @currentQuestion = ko.observable(0)
    @question = ko.computed =>
      @questions[@currentQuestion()]

    @started = ko.observable(false)

  startQuiz: =>
    @started(true)

  answerQuestion: (answer) =>
    @answers.push(answer.text)
    @currentQuestion(@currentQuestion() + 1)

    unless @question()
      $.ajax(
        type: 'POST',
        url: @url,
        dataType: 'json',
        contentType: 'application/json',
        data: ko.toJSON(answers: @answers)
      ).done (response) =>
        @recommendation(response)

window.Quiz = Quiz
