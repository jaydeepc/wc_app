/** @jsx React.DOM */

var QuestionBox = React.createClass({
  render: function(){
    return (
      <div>
      <h1> Please Answer This Question </h1>
      <Question question={this.props.question}/>
      <AnswerList answers={this.props.answers}/>
      </div>
    );
  }
})

var Question = React.createClass({
  render: function(){
    return (
      <h2> { this.props.question } </h2>
    )
  }
})

var AnswerList = React.createClass({
  render: function(){
    var answerNode = this.props.answers.map(function(answer){
      return(
        <span> { answer } </span>
      )
    });
    return (
      <div>
        { answerNode }
      </div>
    )
  }
})
