Utils.createComponent ->
  name: 'Admin.Index'
  mixins: [ Reflux.connect Stores.Bundle ]

  render: ->
    <div>
      {@tableHeader()}
      <ul className="admin-bundle-list">
        {@renderBundle bundle for bundle in @state.bundles}
      </ul>
    </div>

  renderBundle: (bundle) ->
    <li key={bundle._id}>
      <h5>{bundle.title}</h5>
      <button
        className="btn btn-danger"
        onClick={=> @onRemoveClick(bundle._id)}>
        Remove</button>
    </li>

  tableHeader: ->
    <div className="table-header">
      <Link to='/admin/new'>
        <Components.IconButton className="btn-primary" icon="plus">
          Add
        </Components.IconButton>
      </Link>
    </div>

  onRemoveClick: (_id) ->
    Actions.removeBundle _id
