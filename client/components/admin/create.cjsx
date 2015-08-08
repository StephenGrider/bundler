Utils.createComponent ->
  name: 'Admin.Create'
  mixins: [
    Reflux.connect Stores.Errors
    Mixins.Validation
  ]

  getInitialState: ->
    bundle: new Models.Bundle

  render: ->
    console.log @state
    <div className="admin-create">
      <h3>New Bundle</h3>
      <form onSubmit={@handleSubmit}>
        {@errors()}

        {@input 'title', 'Title'}
        <button className="btn btn-primary" type="submit">Save</button>
      </form>
    </div>

  input: (property, label) ->
    <div>
      <label htmlFor='title'>Title</label>
      <input
        value={@state.bundle.attrs[property]}
        onChange={_.partial @handleChange, property}
        id='title'
        />
    </div>

  handleChange: (property, event) ->
    @state.bundle.attrs[property] = event.target.value
    @setState bundle: @state.bundle

  handleSubmit: (e) ->
    e.preventDefault()
    Actions.createBundle @state.bundle
