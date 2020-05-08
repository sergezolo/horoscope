class Horoscope::CLI
  
  @@grn="\e[1;32m"
  @@blu="\e[1;34m"
  @@mag="\e[1;35m"
  @@cyn="\e[1;36m"
  @@white="\e[0m"
  
	def call

	puts "\n#{@@blu}Wonder what the stars have aligned for you today? 
	Find out in this Daily Horoscope App!#{@@white}\n"
  puts ""  
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
			puts "\n#{@@blu}Thank you for swinging by! See you tomorrow!#{@@white}\n"  
  end

	def get_zodiac
		@zodiac = Horoscope::Zodiac.all
	end

	def list_zodiac
	  array_1 = []
		array_2 = []
	  @zodiac.each.with_index(1) do |zodiac, index|
	    item = (("#{index}. " + "#{zodiac.sign}").to_s + " " * 15)[0,17]
		  array_1 << item
		end
		array_2 = array_1.group_by.with_index do |sign, index|
		            index % (@zodiac.length / 3)
		          end.values
    array_2.each do |row|
      row.each do |col|
        print col.to_s + " "
      end
    puts
    end
    menu
	end	
	
	
	def get_user_zodiac
	  @input = gets.strip.downcase
	end

	def show_forecast
		sign = @zodiac[@input.to_i - 1]
		puts "\n#{@@grn}Today's Horoscope for #{sign.sign}:#{@@white}\n"
		puts ""
		puts sign.forecast
		menu
	end
	
	def menu
	  puts ""
	  puts "#{@@mag}Type #{@@cyn}1-12#{@@mag} to see a forecast for your Zodiac Sign!"
	  puts "#{@@mag}Type #{@@cyn}find#{@@mag} to find out the Zodiac Sign by the Date of Birth!"
	  puts "#{@@mag}Type #{@@cyn}list#{@@mag} to see the list of all Zodiac Signs."
	  puts "#{@@mag}Type #{@@cyn}exit#{@@mag} to exit the Horoscope App!#{@@white}"
	end
	
	def find_zodiac
	  
	  constant = {
	    "Capricorn" => [0101, 0119],
	    "Aquarius" => [0120, 0218],
	    "Pisces" => [0219, 0320],
	    "Aries" => [0321, 0419],
	    "Taurus" => [0420, 0520],
	    "Gemini" => [0521, 0620],
	    "Cancer" => [0621, 0722],
	    "Leo" => [0723, 0822],
	    "Virgo" => [0823, 0922],
	    "Libra" => [0923, 1022],
	    "Scorpio" => [1023, 1121],
	    "Sagittarius" => [1122, 1221],
	    "Capricorn2" => [1222, 1231]
	  }
	    
	    
	  
    mmdd = 
    puts "Your zodiac sign is "
  end

end


