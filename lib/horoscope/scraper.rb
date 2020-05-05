class Horoscope::Scraper
  
  def self.scrape_zodiac
    doc = Nokogiri::HTML(open("https://www.elle.com/horoscopes/daily/"))
    
    zodiac = doc.css("div.simple-item-title.item-title")
    
    zodiac.each do |text|
      output = text.text.split(" ")
      Horoscope::Zodiac.new(output[0])
    end
  end
  
  def self.scrape_paragraph(sign)
    Horoscope::Paragraph.new("text", sign) 
    Horoscope::Paragraph.new("sdgsdgtext", sign) 
  end
  
end
