puts "What is the hamsters name?"
hamster_name = gets.chomp
puts "How loud is the hamster, on a scale of 1 to 10?"
volume = gets.chomp.to_i
puts "What color is its fur?"
fur_color = gets.chomp
adopt = nil
until adopt == true || adopt == false

puts "is this hamster good for adoption (yes or no)"

adopt = gets.chomp

if adopt == "yes"

  adopt = true

elsif adopt == "no"

  adopt = false

else "try again"
end

end
puts "How old is this hamster?"
hamster_age = gets.chomp

puts "Hamster Name: #{hamster_name}"
puts "Volume Level: #{volume}"
puts "Fur Color: #{fur_color}"
puts "Adoption Status: #{adopt}"
puts "Hamster Age: #{hamster_age}"