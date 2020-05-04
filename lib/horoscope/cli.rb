class Horoscope::CLI
  
  def call
    puts "\nWonder what the stars have aligned for you? Find out in this Horoscope App!\n"
    get_period
    list_period
    get_user_period
  end
  
  def get_period
    @period = ["Daily Horoscope", "Weekly Horoscope", "Monthly Horoscope"]
  end
  
  def list_period
    puts "\nChoose your Daily, Weekly or Monthly Horoscope here:\n"
    @period.each.with_index(1) do |period, index|
      puts "#{index}. #{period}"
    end
  end
  
  def get_user_period
    user_period = gets.strip
    # if valid_period(user_period.to_i, @period)
    
    # end
  end
  
  def valid_period?(index)
    index.to_i <= @period.length && index.to_i > 0 
  end
  
end
    