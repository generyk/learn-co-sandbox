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
      puts "Select a mountain you'd like to climb by choosing a number 1-10."
      input = gets.strip 
      index = input.to_i - 1 
      if index.between?(0,9)
       mountain = AlpinePro::Mountain.all[index]
       puts ""
       puts "/// You Chose: #{mountain.name} ///"
       want_description(mountain)
      elsif input == "exit"
      else 
        puts "Sorry! I didn't understand that command"
        get_mountain
      end 
    end 
    
    def want_description(mountain)
      puts ""
      puts "Do You Want To Continue (Y/N)"
      input = gets.strip.upcase
      until ["Y","N","YES","NO"].include?(input)
        puts "Please Type Y or N"
        input = gets.strip.upcase 
      end 
      if input == "Y"
        AlpinePro::Scraper.scrape_description(mountain)
      else 
        puts "you ended"
    end 
  end 
  
end 