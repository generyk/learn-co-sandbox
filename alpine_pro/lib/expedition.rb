class AlpinePro::Expedition
  attr_accessor :name, :description
  
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