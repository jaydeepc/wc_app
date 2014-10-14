jest.dontMock('../../app/assets/javascripts/CheckboxWithLabel.js.coffee.cjsx')

describe 'CheckboxWithLabel', ->
	it 'changes the text after click', ->
		React = require('react/addons')
		CheckboxWithLabel = require('../../app/assets/javascripts/CheckboxWithLabel.js.coffee.cjsx')
		TestUtils = React.addons.TestUtils
		checkbox = TestUtils.renderIntoDocument(CheckboxWithLabel({	labelOn: "On", labelOff: "Off" }))

		label = TestUtils.findRenderedDOMComponentWithTag checkbox, 'label'

		expect(label.getDOMNode().textContent).toBe 'Off'

		input = TestUtils.findRenderedDOMComponentWithTag checkbox, 'input'
		TestUtils.Simulate.change input

		expect(label.getDOMNode().textContent).toBe 'On'