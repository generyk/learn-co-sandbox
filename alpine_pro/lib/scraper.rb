class AlpinePro::Scraper
  
  def self.scrape_mountains 
    index_page = Nokogiri::HTML(open("https://www.thegentlemansjournal.com/article/top-10-mountains-to-climb-around-the-world/"))
    
    array_of_mountains = index_page.css(".c-content-builder__header--2.o-wrapper.o-wrapper--reading.o-wrapper--reading-left")
    
    array_of_mountains.each do |mountain_card|
    name = mountain_card.text 
    mountain = AlpinePro::Mountain.new(name) 
    end 
  end 
  
  def self.scrape_description(mountain)
    index_page = Nokogiri::HTML(open("https://www.thegentlemansjournal.com/article/top-10-mountains-to-climb-around-the-world/"))
  
  end 
end 
 


    
        
    