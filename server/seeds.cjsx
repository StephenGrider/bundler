bundles = [
    title: 'Awesome Kit1'
  ,
    title: 'Awesome Kit2'
  ,
    title: 'Awesome Kit3'
  ,
    title: 'Awesome Kit4'
  ,
    title: 'Awesome Kit5'
  ,
    title: 'Awesome Kit6'
  ,
    title: 'Awesome Kit7'
  ,
    title: 'Awesome Kit8'
  ,
    title: 'Awesome Kit9'
  ,
    title: 'Awesome Kit10'
  ,
    title: 'Awesome Kit11'
  ,
    title: 'Awesome Kit12'
]

if @Collections.Bundles.find().fetch().length < 3
  for bundle in bundles
    @Collections.Bundles.insert bundle
