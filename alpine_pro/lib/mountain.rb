class AlpinePro::Mountain
  
  attr_accessor :name, :elevation, :description
  
  @@all = []
  
  def initialize 
    @@all << self 
  end 
  
  def self.all
    @@all
  end 
  
  def self.find(id)
    self.all[id-1]
  end 
  
end 