class Horoscope::Paragraph
  
  attr_accessor :text, :sign
  attr_writer 
  
  @@all = []
  
  def initialize(text, sign)
    @text = text
    @sign = sign
    @paragraph = paragraph
    @@all << self
  end

end
