  class AlpinePro::CLI 
  
    def start 
      puts ""
      puts "Hello Explorer! Welcome to Alpine Pro."
      puts ""
      get_mountains
    end 
    
    def get_mountains
       AlpinePro::Scraper.scrape_mountains
    end 
    
    def list_mountains
      AlpinePro::Mountain.all.each.with_index(1) do |mountain, i|
        puts "#{i}. #{mountain.name}"
      end 
    end 
    
    def menu
      list_mountains
        puts ""
        puts "Please Select a Mountain from 1 - 10 to Find Out More."
        puts ""
      
      input = gets.strip.to_i-1
      number_of_mountains = AlpinePro::Mountain.all.size 
      
        if input.between?(0, number_of_mountains -1)
          i = input 
          
          mountain = AlpinePro::Mountain.all[i]
          AlpinePro::Scraper.scrape_mountain_details(mountain)
          puts "Your Next Adventure: #{mountain.name}"
          puts ""
          puts "//Elevation// #{mountain.altitude}"
          puts ""
          
          list_mountains
          
        else 
          goodbye 
        end 
      end 
      
      def goodbye 
        puts "See You Later!"
    end 
end 