# @Components.App = React.createClass
Utils.createComponent ->
  name: 'App'
  mixins: [ Reflux.listenTo Stores.Bundle, 'onChange' ]

  getInitialState: ->
    bundles: []
    title: ''
    error: ''

  componentDidMount: ->
    Actions.indexBundle()

  onChange: (event, payload) ->
    @setState bundles: payload

  render: ->
    <div>
      <h1>I'm here</h1>
      <input type='text' onChange={@handleChange} value={@state.title}></input>
      <button onClick={@handleClick}>New Bundle</button>
      {@state.error if @state.error}
      <ul>
        {@list()}
      </ul>
    </div>

  handleChange: (event) ->
    @setState title: event.target.value

  list: ->
    for bundle in @state.bundles
      <li key={bundle._id}>
        <h4>Title:</h4>
        <div>
          {bundle.title}
        </div>
        <button onClick={=> @handleDelete(bundle._id)}></button>
      </li>

  handleDelete: (_id) ->
    Actions.removeBundle _id

  handleClick: ->
    Actions.createBundle @state.title
    # , (err) =>
    #   message = if err then err.message else ''
    #   @setState error: message

    @setState title: ''
