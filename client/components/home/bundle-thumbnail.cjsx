Utils.createComponent ->
  name: 'BundleThumbnail'

  render: ->
    <div className="bundle-thumbnail thumbnail">
      <img href={@props.imageUrl} />
      <div className="caption">
        <h5>{@props.title}</h5>
      </div>
    </div>
