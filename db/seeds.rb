# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

location1= Location.create(name:'Jome', zip_code: 49001, city:'Zamora', country: 'Espain', description:'esto es where I came from')
location2= Location.create(name:'Jaus', zip_code: 28004, city:'Madrid', country: 'Espain', description:'esto es where I live')
location3= Location.create(name:'LondonCity', zip_code: 013574, city:'London', country: 'UK', description:'esto es where I will travel')

Visit.create(user_name: 'Mauro', location_id: location1.id, tlf: 55598744) #tambien se podria haber puesto location_id: 'location1.id' para relacionar visitas con locations
Visit.create(user_name: 'Estela', location_id: location2.id, tlf: 5222224)
Visit.create(user_name: 'Raul', location_id: location3.id, tlf: 55444444)
Visit.create(user_name: 'Rodri', location_id: location2.id, tlf: 552344)
Visit.create(user_name: 'Pablo', location_id: location2.id, tlf: 55587644)