class AlpinePro::Scraper
 
  def self.scrape_mountains
    doc = Nokogiri::HTML(open("https://www.thegentlemansjournal.com/article/top-10-mountains-to-climb-around-the-world/"))
    
    mountains = doc.css(".c-content-builder__header--2.o-wrapper.o-wrapper--reading.o-wrapper--reading-left")
    mountains.altitude = m.css("c-content-builder__paragraph o-wrapper o-wrapper--reading o-wrapper--reading-left")
    mountains.each do |m|
      name = m.text 
      AlpinePro::Mountain.new(name)
    end 
  end 
end 
 


    
        
    