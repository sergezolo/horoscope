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
    user_period = gets.strip.to_i
    show_zodiac_for(user_period) if valid_period(user_period, @period)
  end
  
  def valid_period?(index, @period)
    index.to_i <= @period.length && index.to_i > 0 
  end
  
  def show_zodiac_for(user_period)
    puts "Zodiac signs"
    Horoscope::Zodiac.all.each.with_index(1) do |zodiac|
      puts zodiac.name
    end
    
  end
    
end
    