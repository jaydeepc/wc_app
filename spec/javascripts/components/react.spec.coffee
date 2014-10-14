describe 'CheckboxWithLabel', ->
	it 'changes the text after click', ->
		TestUtils = React.addons.TestUtils
		checkbox = TestUtils.renderIntoDocument(CheckboxWithLabel({	labelOn: "On", labelOff: "Off" }))

		label = TestUtils.findRenderedDOMComponentWithTag checkbox, 'label'

		expect(label.getDOMNode().textContent).toBe 'Off'

		input = TestUtils.findRenderedDOMComponentWithTag checkbox, 'input'
		TestUtils.Simulate.change input

		expect(label.getDOMNode().textContent).toBe 'On'
