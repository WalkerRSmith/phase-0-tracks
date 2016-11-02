	puts "How many employees are you processing?"
	how_many = gets.chomp.to_i
	count = 0
	until how_many == count 

		puts "How old are you?"
		age = gets.chomp.to_i
		puts "What year were you born?"
		birth_year = gets.chomp.to_i
		math_year = 2016 - birth_year
		if math_year == age
			age = true
			
		end
		puts "Our company cafeteria serves garlic bread. Should we order you some?"
		garlic = gets.chomp
		if garlic == "Yes"
			garlic = true
		else 
			garlic = false
		end
		puts "Would you like to enroll in our health insurance program?"
		health = gets.chomp
		if health == "Yes"
			health = true
		else
			health = false
			
		end

		puts "What is your name?"
		vamp_name = gets.chomp
		case vamp_name
		when "Tu Fang"
			puts "VAMPIRE!"
		when "Drake Cula"
			puts "VAMPIRE!"
		else 
			puts "Well then."

			if age == true && (garlic == true || health == true) 
				puts "Probably not a vampire."
			elsif age == false && (garlic == false || health == false)
				puts "Probably a vampire."
			elsif age == false && garlic == false && health == false
				puts "Almost certainly a vampire."	
			else 
				puts "Results inconclusive."
			end
		end	

		puts "Last question, do you have any allergies? (Type done when you are finished)"
		allergies = false
		until allergies == true
			allergies = gets.chomp
			puts "Any others?"
				if allergies == "sunshine"
					puts "Probably a vampire"
					exit
				elsif allergies == "done"
					allergies = true
							
				end
		end
		count += 1
	end
	puts "You know what? Forget about these questions, lets all be friends!"

