jest.dontMock('../../app/assets/javascripts/components/questions.js.coffee.cjsx')


describe 'Answer', ->
	it 'Should execute handler on click', ->
		React = require('react/addons')
		Questions = require('../../app/assets/javascripts/components/questions.js.coffee.cjsx')
		Answer = Questions.Answer

		console.log Answer
