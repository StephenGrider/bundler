Utils.createComponent ->
  name: 'IconButton'

  render: ->
    <button className="btn #{@props.className}">
      <span className="badge">
        <span className="glyphicon #{@props.icon}"></span>
      </span>
      {@props.children}
    </button>
