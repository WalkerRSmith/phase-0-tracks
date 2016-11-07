def cat_name
    name_1 = "Spinelli"
    name_2 = "Ray"
	puts "My cats names are #{name_1} and #{name_2}"
	yield(name_1, name_2)
	puts "THE BLOCK HAS YIELDED"
end

cat_name{|name_1, name_2| puts "This block also says #{name_1} and #{name_2}"}

###########

movies = ["Die Hard", "Die Hard 2", "Die Hard With A Vengeance", "Live Free or Die Hard"]

bad_movies = {
	worse: "Citizen Kane",
	worser: "Vertigo",
	worst: "Casablanca",
}

p movies
movies.each {|films| puts "#{films} is the best."}
p movies

p movies 
movies.map! do |films|
	films + " is good"
end
p movies	

p bad_movies
bad_movies.each { |real_bad, so_bad| puts "Well, #{real_bad} is better than #{so_bad}."}
p bad_movies

############

integers = [1,2,3,4,5,6,7,8,9]

colors = {
	a: 1,
	b: 2,
	c: 3,
	d: 4,
	e: 5,
	f: 6,
	g: 7,
	h: 8,
	i: 9,
}

integers.delete_if {|index| index > 5}
p integers

colors.delete_if {|key, value| key > :g}
p colors

###

integers.keep_if {|index| index%2 != 0}
p integers

colors.keep_if { |key, value| key%2 == 0}
p colors

###

integers.select! {|index| index < 3}
p integers

colors.select! { |key, value| key < :h && value > 3}
p colors

###

integers.reject! { |index| index >= 8}
p integers

colors.reject! { |key, value| key > :c && < 8 }
p colors