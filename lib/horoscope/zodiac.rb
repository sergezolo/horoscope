class Horoscope::Zodiac
  
  attr_accessor :sign
  attr_writer :paragraph
  
  @@all = []
  
  def initialize(sign)
    @sign = sign
    @paragraph = []
    @@all << self
  end
  
  def self.all
    Horoscope::Scraper.scrape_zodiac if @@all.empty?
    @@all
  end
  
  def paragraph
    Horoscope::Scraper.scrape_paragraph(self) if @paragraph.empty?
    @paragraph
  end
  
end
