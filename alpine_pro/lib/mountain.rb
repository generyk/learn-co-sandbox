class AlpinePro::Mountain
  
  attr_accessor :name, :altitude
  
  @@all = []
  
  def initialize(name) 
    @name = name 
    save 
  end 
  
  def self.all
    @@all
  end 
  
  def save
    @@all << self 
  end 
  
end 