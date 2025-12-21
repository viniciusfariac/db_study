use("viagens")

db.users.insertMany({
"_id": 1,
"name": "Vinicius Faria",
"age": "17",
"birth": "2008-10-10",
"address": "Street of flowers",
"addresses": [{
"street": "Flowers",
"number": 123,
"neighborhood": "Eight",
"city": "São Paulo"
}],
"interest": ["kart", "mountain", "beach"]
})

db.destinations.insertMany({
"_id": 1,
"name": "Americanas",
"description": "Americanas land",
"localization": {
"type": "Point",
"coordination": [-2313214, 31231]
}
})