class Horoscope::CLI
  
  def call
    puts "\nWonder what the stars have aligned for you? Find out in this Horoscope App!\n"
    get_period
    list_period
    get_user_period
  end
  
  def get_period
    @period = Horoscope::Period.all
  end

  # def get_period
  #   @period = ["Daily Horoscope", "Weekly Horoscope", "Monthly Horoscope"]
  # end
  
  def list_period
    puts "\nChoose your Daily, Weekly or Monthly Horoscope by choosing its index:\n"
    @period.each.with_index(1) do |period, index|
      puts "#{index}. #{period.term}"
    end
  end
  
  def get_user_period
    user_period = gets.strip.to_i
    if valid_period?(user_period)
      show_zodiac_for(user_period)
    else puts "Wrong input! Try again!" 
      get_user_period
    end
  end
  
  def valid_period?(index)
    index.to_i <= @period.length && index.to_i > 0 
  end
  
  def show_zodiac_for(user_period)
    puts "Zodiac signs"
  end

end



  # def find_zodiac(mmdd)
  #   mmdd = 
  #   puts "Your zodiac sign is "
  # end