class AlpinePro::Scraper
 
  def self.list_mountain_names
    self.scrape_mountains
  end 
  
  def self.scrape_mountains
    mountains_list = []
    doc = Nokogiri::HTML(open('https://www.thegentlemansjournal.com/article/top-10-mountains-to-climb-around-the-world/'))
    doc.css("div.c-content-builder__header--2 h2").each do |m|
      name = m.text 
      mountain = AlpinePro::Mountain.new(name)
      binding.pry
    end
  end
end 
 


    
        
    