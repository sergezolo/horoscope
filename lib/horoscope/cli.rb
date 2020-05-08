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
	  
	  zodiacs = {"Capricorn" => [101, 119], "Aquarius" => [120, 218], "Pisces" => [219, 320], "Aries" => [321, 419], "Taurus" => [420, 520], "Gemini" => [521, 620], "Cancer" => [621, 722], "Leo" => [723, 822], "Virgo" => [823, 922], "Libra" => [923, 1022], "Scorpio" => [1023, 1121], "Sagittarius" => [1122, 1221], "Capricorn2" => [1222, 1231]}
	  
	  puts "#{@@blu}Please enter the Date of Birth in format #{@@cyn}MMDD#{@@white}"
	  
	  string = gets.strip
	  month = string[0..1]
	  date = string[2..3]
	  
	  if month.to_i < 13 && date.to_i < 32
	    if month.to_i < 10
	      month = month.gsub("0", "")
	    end
	    number = month + date
	  else
	    puts "Wrong date! Try again!"
	  end
	  
    zodiacs.find do |sign, array|
      if array[0] <= number.to_i && array[1] >= number.to_i
        if sign == "Capricorn2"
          sign= "Capricorn"
        else
          sign
        end
      end
    end

  end

end




