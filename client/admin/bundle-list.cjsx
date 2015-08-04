Utils.createComponent ->
  name: 'Admin.BundleList'

  render: ->
    <ul className="admin-bundle-list">
      {@renderBundle bundle for bundle in @props.bundles}
    </ul>

  renderBundle: (bundle) ->
    <li key={bundle._id}>
      <h5>{bundle.title}</h5>
      <button
        className="btn btn-danger"
        onClick={=> @onRemoveClick(bundle._id)}>
        Remove</button>
    </li>

  onRemoveClick: (_id) ->
    Actions.removeBundle _id
