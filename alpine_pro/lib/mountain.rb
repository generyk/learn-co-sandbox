class AlpinePro::Mountain
  
  attr_accessor :name, :elevation, :description
  
  @@all = []
  
  def initialize 
    @@all << self 
  end 
  
  def self.all
    @@all
  end 
  
end 