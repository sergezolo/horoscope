class Horoscope::Zodiac
  
  attr_accessor :sign
  
  @@all = []
  
  def initialize(sign)
    @sign = sign
    @@all << self
  end
  
  def self.all
    Horoscope::Scraper.scrape_zodiac if @@all.empty?
    @@all
  end
  
end
