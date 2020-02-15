class AlpinePro::Scraper
 
  def self.scrape_mountains
    doc = Nokogiri::HTML(open('https://www.thegentlemansjournal.com/article/top-10-mountains-to-climb-around-the-world/'))
    
    mountains = doc.css("div.c-content-builder__header--2 o-wrapper o-wrapper--reading o-wrapper--reading-left h2")
    binding.pry
    mountains.each do |m|
      name = m.text 
      AlpinePro::Mountain.new(name)
      
    end 
  end
end 
 


    
        
    