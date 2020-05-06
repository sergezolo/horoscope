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
    url = "https://astrostyle.com/horoscopes/daily/#{sign.sign}"
    doc = Nokogiri::HTML(open(url))
    article = doc.css("div.gdlr-item.gdlr-content-item article div.horoscope-content p")
    sign.forecast = article.text
  end
  
end
