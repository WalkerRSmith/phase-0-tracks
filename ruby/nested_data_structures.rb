pet_store = {
	hamsters: {
		fuzziness: 87,
		cost: 5,
		possible_names: [
			"Little Mister",
			"Tasty Town",
			"The Enforcer"
		],
		food: [
			"pellets",
			"lettuce",
			"strawberries"
		]
		},
	snakes: {
		fuzziness: 0,
		cost: 78,
		possible_names: [
			"Spanky",
			"Thomas",
			"Franklin Delano Roosevelt"
			],
		food: [
			"rats",
			"mice",
			"you"
		]

		},
	birds: {
		fuzziness: 25,
		cost: 76,
		possible_names: [
			"Mister NiceTimes",
			"Amelia Earhardt",
			"Dale Earhardt"
		],
		food: [
			"seeds",
			"strawberries",
			"bugs"
		]

		},
	dogs: {
		fuzziness: 88,
		cost: 25,
		possible_names: [
			"Eric",
			"Daniel",
			"Vegeta"
		]
		food: [
			"dog food",
			"meat",
			"cat poop"
		]

		},
	cats: {
		fuzziness: 89,
		cost: 25,
		possible_names:[
			"Chairman Meow",
			"Vladimir Lenin",
			"Stalin"
		]

		},
} 

puts pet_store[:dogs]
puts pet_store[:hamsters][:food]
puts pet_store[:cats][:fuzziness]
puts pet_store[:birds][:food][2]