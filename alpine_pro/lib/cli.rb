  class AlpinePro::CLI 
  
    def start 
      puts ""
      puts "Welcome to Alpine-Pro!"
      puts ""
      puts "Here are expeditions you should check out:"
      puts ""
      AlpinePro::Scraper.scrape_expeditions
      list_expeditions
      get_expedition
    end 
    
    def list_expeditions
      AlpinePro::Expedition.all.each.with_index(1) do |expedition, index|
        puts "#{index}. #{expedition.name}"
      end 
    end 
    
    def get_expedition
      puts ""
      puts "////////////////////////////////////////////////////////////////"
      puts ""
      puts "Select an Expedition from 1-109"
      input = gets.strip
      index = input.to_i - 1 
      if index.between?(0,108)
        expedition = AlpinePro::Expedition.all[index]
      puts ""
      puts "///  You Chose: #{expedition.name}  ///"
      want_description(expedition)
      elsif input == "exit"
      else 
        puts "Sorry I didn't understand that command"
        get_expedition
      end 
    end 
    
    def want_description(expedition)
      
      expedition.description = AlpinePro::Scraper.scrape_description(expedition.path)
      puts ""
      puts "Do You Want To Continue (Y/N)"
      input = gets.strip.upcase
      until ["Y","N","YES","NO"].include?(input)
        puts "Please Type Y or N"
        input = gets.strip.upcase
      end 
      if input == "Y"
        puts ""
        puts "/////////  Your Next Adventure: #{expedition.name}  /////////"
        puts ""
        puts expedition.description
      else 
        puts "you ended"
      end 
    end 
   
end 