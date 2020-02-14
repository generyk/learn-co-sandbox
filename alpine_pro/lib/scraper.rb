class AlpinePro::Scraper
  
  def self.list_mountain_names
    self.scrape_mountains
  end 
  
  def self.scrape_mountains
    doc = Nokogiri::HTML(open('https://www.thegentlemansjournal.com/article/top-10-mountains-to-climb-around-the-world/'))
    
        
    