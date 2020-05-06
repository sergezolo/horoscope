class Horoscope::CLI
  
  def call
    puts "\nWonder what the stars have aligned for you today? 
    Find out in this Daily Horoscope App!\n"
    
    @zodiac = Horoscope::Zodiac.all
    
    list_zodiac
    
    input = gets.strip.downcase
    
      while input != "exit"
        if input.to_i <= @zodiac.length && input.to_i > 0
          sign = @zodiac[input.to_i - 1]
          puts "Today's Horoscope for #{sign.sign}:"
        elsif input == "list"
          puts "\nChoose your Zodiac Sign by selecting its index:\n"
          list_zodiac
        else puts "Wrong input! Try again!"
          input = gets.strip.downcase
        end
      end
      
      puts "Thank you for swinging by! See you tomorrow!"  
  
  end

  def list_zodiac
    @zodiac.each.with_index(1) {|zodiac, index| puts "#{index}. #{zodiac.sign}"}
  end

end



  # def find_zodiac(mmdd)
  #   mmdd = 
  #   puts "Your zodiac sign is "
  # end