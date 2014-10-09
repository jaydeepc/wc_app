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
        <Answer key={ answer.id } answer={ answer.text } />
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
  handleClick: function(e){
    return;
  },
  render: function(){
    return (
      <input type="button" value={ this.props.answer } data-key={ this.props.key } onClick={ this.handleClick } />
    )
  }
})
