  class AlpinePro::CLI 
  
  #welcome method, calls on scraper to list expedition names
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
    
  #list method turns the expeditions into a list with index 
    def list_expeditions
      AlpinePro::Expedition.all.each.with_index(1) do |expedition, index|
        puts "#{index}. #{expedition.name}"
      end 
    end 
    
  #get method outputs the expedition list  and receives user input
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
      abort("Happy Climbing!")
      else 
        puts "Sorry I didn't understand that command"
        get_expedition
      end 
    end 
    
    #description method receives the descriptions from the scraper class
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
        list_again 
      else 
        abort("Happy Climbing!")
      end 
    end 
      
      def list_again
        puts "Enter 'list' to see all expeditions again or Enter 'exit' to exit the program."
      input = gets.strip.downcase
      if input == "list"
        list_expeditions
        get_expedition 
      elsif input == "exit"
      abort("Happy Climbing!")
     else 
       puts "Sorry I didn't understand that command"
        list_again
       end 
      end 
   
end 