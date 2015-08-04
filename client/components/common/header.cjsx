Utils.createComponent ->
  name: 'Header'

  render: ->
    return <header className="navbar navbar-default header">
      <Link to="/">
        <h1 className="">
          Bundler
        </h1>
      </Link>
      <div className="nav-button-wrapper">

        <Link to="/wishlist" className="nav-button">
          WishList
        </Link>
        {@authenticationLink()}
      </div>
    </header>

  authenticationLink: ->
    if @props.user
      [
        <Link to="/account" key=1 className="nav-button">
          Account
        </Link>
        <a href="#" onClick={@handleLogoutClick} key=2 className="nav-button">
          Log Out
        </a>
      ]
    else
      [
        <Link to="/login" key=1 className="nav-button">
          Log in
        </Link>
        <Link to="/signup" key=2 className="nav-button">
          Sign up
        </Link>
      ]

  handleLogoutClick: ->
    Actions.logoutUser()
