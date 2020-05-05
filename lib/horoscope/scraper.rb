class Horoscope::Scraper
  
  def self.scrape_zodiac
    doc = Nokogiri::HTML(open("https://astrostyle.com/horoscopes/daily/"))
    
    zodiac = doc.css("div.three.columns div.gdlr-item.gdlr-column-shortcode")
    
    zodiac.each do |text|
      output = text.text.split(" ")
      Horoscope::Zodiac.new(output[0])
    end
  end
  
  def self.scrape_forecast(sign)
    

  end
  
end
