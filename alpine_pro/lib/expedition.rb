class AlpinePro::Expedition

  attr_accessor :name, :path, :description 
  
  @@all = []
  
  def initialize(name, path)
    @name = name 
    @path = path 
    save 
  end 
  
  def self.all 
    @@all 
  end 
  
  def save 
    @@all << self 
  end 
  
end 