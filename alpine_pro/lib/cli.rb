  class AlpinePro::CLI 
    
    #Program begins by running the list_mountains method 
    def start 
      greeting
      list_mountains
    end 
  
    #Greeting 
    def greeting 
      puts ""
      puts "Hello Explorer! Please select a mountain to learn more about."
      puts "\n/ / /  Select a mountain from 1 - 10 / / / " 
      puts ""
    end 
    
    def list_mountains
      AlpinePro::Scraper.scrape_mountains
      AlpinePro::Mountain.all.each.with_index(1) do |mountain, i|
        if i <= 10 
          puts "#{i}. #{mountain.name}"
        end 
      end 
      puts ""
    end 
end 