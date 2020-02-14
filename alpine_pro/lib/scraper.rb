class AlpinePro::Scraper
 
  def self.list_mountain_names
    self.scrape_mountains
  end 
  
  def self.scrape_mountains
    mountains_list = []
    doc = Nokogiri::HTML(open('https://www.thegentlemansjournal.com/article/top-10-mountains-to-climb-around-the-world/'))
    doc.css(".c-content-builder__header--2").each do |m|
      mountain = AlpinePro::Mountain.new 
    
 


    
        
    