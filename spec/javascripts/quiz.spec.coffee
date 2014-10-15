describe 'Quiz', ->
  beforeEach ->
    @question1 = {text: 'Why?', answers: [{id: 1}, {id: 2}]}
    @question2 = {text: 'How?', answers: [{id: 3}, {id: 4}]}
    @quiz = new Quiz([@question1, @question2], '/recommendations')

  describe 'initialization', ->
    it 'sets the question to the first one in the list', ->
      expect(@quiz.question()).toEqual(@question1)

  describe 'answering questions', ->
    it 'changes the question to the next one when an answer is received', ->
      @quiz.answerQuestion(id: 1)
      expect(@quiz.question()).toEqual(@question2)

  describe '#question', ->
    beforeEach ->
      @deferred = $.Deferred()
      spyOn($, 'ajax').and.returnValue(@deferred.promise())

    describe 'when the last question is answered', ->
      it 'returns a falsy value', ->
        @quiz.answerQuestion(id: 1)
        @quiz.answerQuestion(id: 3)
        expect(@quiz.question()).toBeFalsy()

      it 'posts the answers when there are no more left', ->
        @quiz.answerQuestion(id: 1)
        @quiz.answerQuestion(id: 4)

        expect($.ajax).toHaveBeenCalledWith({
          type: 'POST',
          url: '/recommendations',
          dataType: 'json',
          contentType: 'application/json',
          data: ko.toJSON({answers: [1, 4]})
        })

      it 'does not post before the last question is answered', ->
        @quiz.answerQuestion(id: 1)

        expect($.ajax).not.toHaveBeenCalled()

      it 'sets the recommendation when the post succeeds', ->
        @quiz.answerQuestion(id: 1)
        @quiz.answerQuestion(id: 4)

        @deferred.resolve({text: 'Some grill'})

        expect(@quiz.recommendation().text).toEqual('Some grill')
