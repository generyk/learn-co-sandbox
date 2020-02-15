class AlpinePro::Mountain
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name) 
    @name = name 
    save 
  end 
  
  def self.all
    AlpinePro::Scraper.scrape_mountains if @@all.empty?
    @@all
  end 
  
  def save
    @@all << self 
  end 
  
end 