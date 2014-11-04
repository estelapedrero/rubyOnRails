# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

id1= Location.create(name:'Jome', zip_code: 49001, city:'Zamora', country: 'Espain', description:'esto es where I came from')
id2= Location.create(name:'Jaus', zip_code: 28004, city:'Madrid', country: 'Espain', description:'esto es where I live')
id3= Location.create(zip_code: 013574, city:'London', country: 'UK', description:'esto es where I will travel')