CheckboxWithLabel = React.createClass 
	getInitialState: ->
		isChecked: false
	onChange: ->
		@setState isChecked: not @state.isChecked
		return
	render: ->
		<label>
      		<input type='checkbox' checked= { @state.isChecked } onChange={ @onChange } />
      		{ if @state.isChecked then @props.labelOn else @props.labelOff }
    	</label>

window.CheckboxWithLabel = CheckboxWithLabel
