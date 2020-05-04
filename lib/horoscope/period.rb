class Horoscope::Period
  
  attr_accessor :term
  
  @@all = []
  
  def initialize(term)
    @term = term
    @@all << self
  end
  
  def self.all
    @@all
  end
  
end
