  class AlpinePro::CLI 
  
    def start 
      puts ""
      puts "Welcome to Alpine-Pro!"
      puts ""
      puts "Here are the top 10 mountains you should climb:"
      puts ""
      AlpinePro::Scraper.scrape_mountains 
      list_mountains
      get_mountain
    end 
    
    def list_mountains
      AlpinePro::Mountain.all.each.with_index(1) do |mountain, index|
        puts "#{index}. #{mountain.name}"
      end 
    end 
    
    def get_mountain
      puts "Please select a mountain you'd like to learn more about by choosing a number 1-10."
      input = gets.strip 
      index = input.to_i -1 
      if index.between?(1, 9)
      else 
        puts "Sorry! I didn't understand that command"
        get_mountain
      end 
    end 
    
end 