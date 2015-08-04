Utils.createComponent ->
  name: 'Home'
  mixins: [ Reflux.connect Stores.Bundle ]

  componentDidMount: ->
    Actions.indexBundle()

  render: ->
    <main className="app-content">
      <section>
        <Components.Carousel />
      </section>
      <section>
        <div className="notes row-wrapper">
          {@notes()}
        </div>
      </section>
      <section>
        <Components.BundleList {...@state} />
      </section>
    </main>

  notes: ->
    for note, i in @_notes()
      <div key={i} className="thumbnail">
        <div className="caption">
          <h5>{note.headline}</h5>
        </div>
      </div>

  onChange: (event, payload) ->
    @setState bundles: payload

  _notes: ->
    [
      {
        headline: 'Something'
        text: 'This is a great site This is a great site This is a great site'
        image: ''
      }
      {
        headline: 'Something'
        text: 'This is a great site This is a great site This is a great site'
        image: ''
      }
      {
        headline: 'Something'
        text: 'This is a great site This is a great site This is a great site'
        image: ''
      }
    ]
