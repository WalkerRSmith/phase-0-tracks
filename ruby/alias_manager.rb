# Switch the order of name input and make input lowercase
def change_name(name)
  down_name = name.downcase
  swap_name = down_name.split(" ").reverse.join(" ")
end
# Shift all vowels by one letter foward through a replacement process, using an if/else statement to ignore consonants
def shifter(letter)
  vowel_scrambler = {
    'a' => 'e',  
    'e' => 'i', 
    'i' => 'o', 
    'o' => 'u', 
    'u' => 'a'
  }
  if vowel_scrambler.has_key?(letter)
    letter = vowel_scrambler[letter]
  elsif letter == ' '
    letter = ' '
  elsif letter == 'z'
    letter = 'b'
  elsif letter == 'd' || letter == 'h' || letter == 'n' || letter == 't' 
    letter.next.next
  else
    letter.next  
  end
end

puts "SECRET NAME MAKER BEGIN"
puts "ENTER YOUR FIRST AND LAST NAME (Enter 'quit' when finished)"
# Ask the user to put in name for usage
finished = false 
id_list = {}
# Loop until user enters 'quit', asking the user for a new name on every loop
until finished == true
  old_name = gets.chomp
  if old_name == "quit"
    puts "THANK YOU FOR USING THE NAME MAKER TELL NO ONE"
    finished = true 
  else
  	# Call the name swap and split, iterate through and call the letter swap method on each
    swap_name = change_name(old_name).split("")
    swap_name.map! { |string| shifter(string) }
    new_name = swap_name.join("").split.map(&:capitalize).join(" ")
    puts "NEW IDENTIT:'#{new_name}'"
# Print the new name
    id_list[old_name] = new_name 

    puts "ENTER ANOTHER NAME TO CHANGE"
  end
end
# Print a list of all identities and original names stored over the course of usage
id_list.each { |old_name, new_name| puts "'#{old_name}' IS NOW '#{new_name}'" }