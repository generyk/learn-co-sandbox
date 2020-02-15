  class AlpinePro::CLI 
    
    #Program begins by running the list_mountains method 
    def start 
      greeting
      get_mountains
      list_mountains
    end 
  
    #Greeting 
    def greeting 
      puts ""
      puts "Hello Explorer! Please Select a Mountain to Learn More About."
      puts "\n/ / /  Select a Mountain from 1 - 10 / / / " 
      puts ""
    end 
    
    def get_mountains
       AlpinePro::Scraper.scrape_mountains
    end 
    
    def list_mountains
      AlpinePro::Mountain.all.each.with_index(1) do |mountain, i|
        puts "#{i}. #{mountain.name}"
      end 
    end 
end 