class Horoscope::Forecast
  
  attr_accessor :text, :sign

  @@all = []
  
  def initialize(text, sign)
    @text = []
    @sign = sign
    @@all << self
    zodiac.sign << self
  end
  
  def self.all
    @@all
  end

end
