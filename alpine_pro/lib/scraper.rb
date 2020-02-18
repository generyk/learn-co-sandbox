class AlpinePro::Scraper
  
  def self.scrape_expeditions 
    index_page = Nokogiri::HTML(open("https://www.adventureconsultants.com/expeditions/"))
    
    array_of_expeditions = index_page.css("span.slide__title.uppercase")
    
    array_of_expeditions.each_with_index do |expedition_card|
    name = expedition_card.text 
    expedition = AlpinePro::Expedition.new(name)
     end 
  end 
 
  def self.scrape_description(expedition)
  description_page = Nokogiri::HTML(open("https://www.adventureconsultants.com/expeditions/seven-summits/everest/"))
  descriptions = expedition_card.search("div.body-content").text 
  end 
  
end 


    
        
    