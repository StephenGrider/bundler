Utils.createComponent ->
  name: 'BundleList'

  render: ->
    <div className="row-wrapper bundle-list">
      {@thumbnails()}
    </div>

  thumbnails: ->
    for bundle in @props.bundles
      <Components.BundleThumbnail key={bundle._id} {...bundle} />
