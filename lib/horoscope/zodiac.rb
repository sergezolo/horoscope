class Horoscope::Zodiac
  
  attr_accessor :sign, :forecast
  
  @@all = []
  
  def initialize(sign)
    @sign = sign
    @forecast = []
    @@all << self
  end
  
  def self.all
    Horoscope::Scraper.scrape_zodiac if @@all.empty?
    @@all
  end
  
  def get_forecast
    Horoscope::Scraper.scrape_forecast(self) if @forecast.empty?
    @forecast
  end
  
end
