describe 'Questions', ->
  describe 'Answer', ->
    beforeEach ->
      @handlerSpy = jasmine.createSpy 'handlerSpy'
      @answerComponent = TestUtils.renderIntoDocument Answer { answer: 'some answer', key: 42, handler: @handlerSpy }
      @answerElement = TestUtils.findRenderedDOMComponentWithTag @answerComponent, 'input'

    it 'executes handler on click', ->
      TestUtils.Simulate.click @answerElement

      expect(@handlerSpy).toHaveBeenCalled()

    it 'initializes the element with provided properties', ->
      node = @answerElement.getDOMNode()

      expect(node).toHaveAttr('type', 'button')
      expect(node).toHaveValue('some answer')
      expect(node).toHaveAttr('data-key', '42')


