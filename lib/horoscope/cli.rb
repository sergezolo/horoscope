class Horoscope::CLI
  
  def call
    puts "\nWonder what the stars have aligned for you today? Find out in this Daily Horoscope App!\n"
    get_zodiac
    list_zodiac
    get_user_zodiac
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
  
  def get_user_zodiac
    user_zodiac = gets.strip.to_i
    if valid_index?(user_zodiac)
      show_zodiac_for(user_zodiac)
    else puts "Wrong input! Try again!" 
      get_user_zodiac
    end
  end
  
  def valid_index?(index)
    index.to_i <= @zodiac.length && index.to_i > 0 
  end
  
  def show_zodiac_for(user_zodiac)
    puts "Zodiac signs"
  end

end



  # def find_zodiac(mmdd)
  #   mmdd = 
  #   puts "Your zodiac sign is "
  # end