/** @jsx React.DOM */

var Quiz = React.createClass({
  getInitialState: function(){
    return { index: 0, answers: []};
  },
  handleAnswer: function(event){
    var answered = $(event.target).data('key');
    this.setState({ index:   this.state.index + 1,
                    answers: this.state.answers.concat(answered)});
  },
  render: function(){
    if(this.state.index > this.props.questions.length - 1) {
      return <Reccomendation answers={ this.state.answers }/>
    }
    return <QuestionBox question={ this.props.questions[this.state.index] } handler={ this.handleAnswer } />
  }
})

var Reccomendation = React.createClass({
  render: function(){
    var answerList = this.props.answers.map(function(answer){
      return <li> {answer} </li>
    })
    return (
      <div>
        This is our reccomendation based on these answers
        <ul>
          {answerList}
        </ul>
      </div>
    )
  }
})

var QuestionBox = React.createClass({
  render: function(){
    return (
      <div>
        <div>
          <Question question={ this.props.question.text }/>
          <AnswerList answers={ this.props.question.answers } handler={ this.props.handler }/>
          <br/>
        </div>
      </div>
    )
  }
})

var Question = React.createClass({
  render: function(){
    return (
      <span> { this.props.question } </span>
    )
  }
})

var AnswerList = React.createClass({
  render: function(){
    var scopedHandler = this.props.handler
    var answerNode = this.props.answers.map(function(answer){
      return(
        <Answer key={ answer.id } answer={ answer.text } handler={ scopedHandler }/>
      )
    });
    return (
      <div>
        { answerNode }
      </div>
    )
  }
})

var Answer = React.createClass({
  render: function(){
    return (
      <input type="button" value={ this.props.answer } data-key={ this.props.key } onClick={ this.props.handler } />
    )
  }
})
