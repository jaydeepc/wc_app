describe 'Quiz', ->
  beforeEach ->
    @question1 = {text: 'Why?', answers: [{text: 'Because'}, {text: 'Stuff'}]}
    @question2 = {text: 'How?', answers: [{text: 'This way'}, {text: 'That way'}]}
    @quiz = new Quiz([@question1, @question2], '/recommendations')

  describe 'initialization', ->
    it 'sets the question to the first one in the list', ->
      expect(@quiz.question()).toEqual(@question1)

  describe 'answering questions', ->
    it 'changes the question to the next one when an answer is received', ->
      @quiz.answerQuestion(text: 'Because')
      expect(@quiz.question()).toEqual(@question2)

  describe '#question', ->
    beforeEach ->
      @deferred = $.Deferred()
      spyOn($, 'ajax').and.returnValue(@deferred.promise())

    describe 'when the last question is answered', ->
      it 'returns a falsy value', ->
        @quiz.answerQuestion(text: 'Because')
        @quiz.answerQuestion(text: 'This way')
        expect(@quiz.question()).toBeFalsy()

      it 'posts the answers when there are no more left', ->
        @quiz.answerQuestion(text: 'Because')
        @quiz.answerQuestion(text: 'That way')

        expect($.ajax).toHaveBeenCalledWith({
          type: 'POST',
          url: '/recommendations',
          dataType: 'json',
          contentType: 'application/json',
          data: ko.toJSON({answers: ['Because', 'That way']})
        })

      it 'does not post before the last question is answered', ->
        @quiz.answerQuestion(text: 'Because')

        expect($.ajax).not.toHaveBeenCalled()

      it 'sets the recommendation when the post succeeds', ->
        @quiz.answerQuestion(text: 'Because')
        @quiz.answerQuestion(text: 'That way')

        @deferred.resolve({text: 'Some grill'})

        expect(@quiz.recommendation().text).toEqual('Some grill')
