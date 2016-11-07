# Ask the user for input
#

interior_design = {}

puts "What is your name?"
interior_design[:name] = gets.chomp

puts "What is your age? (In years please)"
interior_design[:age] = gets.chomp

puts "How many children do you have?"
interior_design[:children] = gets.chomp

puts "What theme should this room have?"
interior_design[:decor_theme] = gets.chomp

puts "Would you like us to build a Virtuality Reality tour of the space?"
interior_design[:vr] = gets.chomp


puts "See anything you would like to change? (name, age, children, decor_theme or vr) If you don't want to change anything, type 'none'."
new_input = gets.chomp

if new_input == "none"
	p interior_design
else new_input = new_input.to_sym 
	puts "what is the new value of the key you entered?"
	interior_design[new_input] = gets.chomp
	p interior_design
end