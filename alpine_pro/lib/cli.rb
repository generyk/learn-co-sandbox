  class AlpinePro::CLI 
  
    def start 
      puts ""
      puts "Welcome to Alpine-Pro!"
      puts ""
      puts "Here are the top 10 mountains you should climb:"
      puts ""
      AlpinePro::Scraper.scrape_mountains 
      list_mountains
    end 
    
    def list_mountains
      AlpinePro::Mountain.all.each.with_index(1) do |mountain, index|
        puts "#{index}. #{mountain.name}"
      end 
    end 
    
    
end 