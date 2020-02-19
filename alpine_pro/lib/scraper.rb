class AlpinePro::Scraper
  
#scraping of expedition names and the url to be initialized with the expedition
  def self.scrape_expeditions 
    index_page = Nokogiri::HTML(open("https://www.adventureconsultants.com/expeditions/"))
    
    array_of_expeditions = index_page.css("div.slide__content")
    array_of_expeditions.each_with_index do |expedition_card|
    name = expedition_card.css("span.slide__title.uppercase").text
    path = expedition_card.css("a").attr("href").value
    AlpinePro::Expedition.new(name, path)
     end 
  end 
 
 #scraping of description from url it was initialized with 
  def self.scrape_description(expedition)
  description_page = Nokogiri::HTML(open("https://www.adventureconsultants.com"+ expedition))
  description_page.search("div#body-content").text.strip  
  end 
  
end 

  

    
        
    