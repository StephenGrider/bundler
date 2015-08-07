Utils.createComponent ->
  name: 'IconButton'

  render: ->
    <button className="btn #{@props.className} icon-button">
      <span className="badge">
        <span className="glyphicon glyphicon-#{@props.icon}"></span>
      </span>
      {@props.children}
    </button>
