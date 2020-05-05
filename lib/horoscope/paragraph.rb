class Horoscope::Paragraph
  
  attr_accessor :text, :sign

  @@all = []
  
  def initialize(text, sign)
    @text = text
    @sign = sign
    @@all << self
  end
  
  def self.all
    @@all
  end

end
