Utils.createComponent ->
  name: 'Admin.Main'
  mixins: [ Reflux.connect Stores.Bundle ]

  render: ->
    <main className="app-content admin-main">
      {@tableHeader()}
      <Components.Admin.BundleList bundles={@state.bundles} />
    </main>

  tableHeader: ->
    <div className="tableHeader">
      <Link to='/'>
        <Components.IconButton className="btn-primary" icon="plus">
          Add
        </Components.IconButton>
      </Link>
    </div>
