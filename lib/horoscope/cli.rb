class Horoscope::CLI
  
  @@grn="\e[1;32m"
  @@blu="\e[1;34m"
  @@mag="\e[1;35m"
  @@cyn="\e[1;36m"
  @@white="\e[0m"
  
	def call

	puts "\n#{@@blu}Wonder what the stars have aligned for you today? 
	  Find out in this Daily Horoscope App!#{@@white}\n"
    
		@zodiac = Horoscope::Zodiac.all
		@input = ""
		
		get_zodiac
		list_zodiac
		get_user_zodiac	

			while @input != "exit"
				if @input.to_i <= @zodiac.length && @input.to_i > 0
					show_forecast
				elsif @input == "list" 
					list_zodiac
				else 
				  puts "Wrong input! Try again!"
				end
				get_user_zodiac
			end
			puts "Thank you for swinging by! See you tomorrow!"  
  end

	def get_zodiac
		@zodiac = Horoscope::Zodiac.all
	end

	def list_zodiac
		@zodiac.each.with_index(1) {|zodiac, index| puts "#{index}. #{zodiac.sign}"}
	end
	
	def get_user_zodiac
		@input = gets.strip.downcase
	end

	def show_forecast
		sign = @zodiac[@input.to_i - 1]
		puts "Today's Horoscope for #{sign.sign}:"
		puts sign.forecast
	end

end


  # def find_zodiac(mmdd)
  #   mmdd = 
  #   puts "Your zodiac sign is "
  # end