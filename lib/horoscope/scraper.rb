class Horoscope::Scraper
  
  def self.scrape_zodiac
    doc = Nokogiri::HTML(open("https://www.elle.com/horoscopes/daily/"))
    binding.pry
  end
  
end
