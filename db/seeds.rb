# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

location1= Location.create(name:'Jome',
	zip_code: 49001,
	city:'Zamora',
	country: 'Espain',
	description:'esto es where I came from',
	latitud: '76755',
	longitud: '67587')
location2= Location.create(name:'Jaus',
	zip_code: 28004,
	city:'Madrid',
	country: 'Espain',
	description:'esto es where I live',
	latitud: '76755',
	longitud: '67587')
location3= Location.create(name:'LondonCity',
	zip_code: 013574,
	city:'London',
	country: 'UK',
	description:'esto es where I will travel',
	latitud: '76755',
	longitud: '67587')

user1 = User.create(name: "Miguel", 
	email: "miguel@miguel.com"
	)
user2 = User.create(name: "Sergio", 
	email: "sergio@miguel.com"
	)
user3 = User.create(name: "MiguelA", 
	email: "miguela@miguel.com"
	)
user4 = User.create(name: "Vitaly", 
	email: "vitaly@miguel.com"
	)

Visit.create(location_id: location1.id,
	user_id: user1.id,
	tlf: 55598744) #tambien se podria haber puesto location_id: 'location1.id' para relacionar visitas con locations
Visit.create(location_id: location2.id,
	user_id: user2.id,
	tlf: 5222224)
Visit.create(location_id: location3.id,
	user_id: user3.id,
	tlf: 55444444)
Visit.create(location_id: location2.id,
	user_id: user4.id,
	tlf: 552344)

