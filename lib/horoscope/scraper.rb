class Horoscope::Scraper
  
  def scrape_period
    doc = Nokogiri::HTML(open("https://www.elle.com/horoscopes"))
    binding.pry
  end
  
end
