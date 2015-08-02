sameAuthor: (userId, document) ->
  userId is document.createdBy

Collections.Bundles.allow
  insert: (userId, document) ->
    sameAuthor userId, document

  update: (userId, document) ->
    sameAuthor userId, document

  remove: (userId, document) ->
    sameAuthor userId, document
