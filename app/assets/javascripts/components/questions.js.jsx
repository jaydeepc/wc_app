/** @jsx React.DOM */

var Quiz = React.createClass({
  getInitialState: function(){
    return { index: 0 };
  },
  handleAnswer: function(){
    this.setState({index: 1});
  },
  render: function(){
    return (
      <QuestionBox question={ this.props.questions[this.state.index] } handler={ this.handleAnswer } />
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
