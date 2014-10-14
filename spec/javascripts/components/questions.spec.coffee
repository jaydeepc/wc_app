describe 'Questions', ->
  describe 'Answer', ->
    it 'Should execute handler on click', ->
      handlerSpy = jasmine.createSpy 'handlerSpy'

      TestUtils = React.addons.TestUtils
      answerComponent = TestUtils.renderIntoDocument Answer { answer: 'some answer', key: 42, handler: handlerSpy }

      answerElement = TestUtils.findRenderedDOMComponentWithTag answerComponent, 'input'
      TestUtils.Simulate.click answerElement

      expect(handlerSpy).toHaveBeenCalled()

