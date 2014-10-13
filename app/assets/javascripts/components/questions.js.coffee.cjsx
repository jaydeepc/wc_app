Quiz = React.createClass
  getInitialState: -> index: 0, answers: []
  handleAnswer: (event) ->
    answered = $(event.target).data 'key'
    @setState
      index: @state.index + 1,
      answers: @state.answers.concat answered
    return
  render: ->
    if @state.index > @props.questions.length - 1
      return <Recommendation answers={ @state.answers } />
    <QuestionBox question={ @props.questions[@state.index] }
                 handler={ @handleAnswer } />

Recommendation = React.createClass
  render: ->
    answerList = @props.answers.map (answer) ->
      <li key={ answer }> { answer } </li>
    <div>
      This is our recommendation
      <ul> { answerList } </ul>
    </div>

QuestionBox = React.createClass
  render: ->
    <div>
      <Question question={ @props.question.text } />
      <AnswerList answers={ @props.question.answers }
                  handler={ @props.handler } />
    </div>


Question = React.createClass
  render: ->
    <span> { @props.question } </span>

AnswerList = React.createClass
  render: ->
    scopedHandler = @props.handler
    answerNode = @props.answers.map (answer) ->
      <Answer key={ answer.id }
              answer={ answer.text }
              handler={ scopedHandler } />
    <div> { answerNode } </div>

Answer = React.createClass
  render: ->
    <input type='button'
           value={ @props.answer }
           data-key={ @props.key }
           onClick={ @props.handler } />

window.Quiz = Quiz
