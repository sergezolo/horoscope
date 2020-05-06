class Horoscope::CLI
  
  def call
    puts "\nWonder what the stars have aligned for you today? 
    Find out in this Daily Horoscope App!\n"
    get_zodiac
    list_zodiac
    input = gets.strip.downcase
    
    while input != "exit"
      if input.to_i <= @zodiac.length && input.to_i > 0
        show_zodiac_for(input)
      elsif input == "list"
        list_zodiac
      else puts "Wrong input! Try again!" 
        get_user_zodiac
      end
    end  
  end
  
  def get_zodiac
    @zodiac = Horoscope::Zodiac.all
  end

  def list_zodiac
    puts "\nChoose your Zodiac Sign by selecting its index:\n"
    @zodiac.each.with_index(1) do |zodiac, index|
      puts "#{index}. #{zodiac.sign}"
    end
  end

  def show_zodiac_for(input)
    sign = @zodiac[input - 1]
    sign.get_forecast
    puts "Today's Horoscope for #{sign.sign}:"
  end

end



  # def find_zodiac(mmdd)
  #   mmdd = 
  #   puts "Your zodiac sign is "
  # end