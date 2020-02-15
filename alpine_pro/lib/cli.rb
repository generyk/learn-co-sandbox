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
      puts "Hello Explorer! Please select a mountain to learn more about."
      puts "\n/ / /  Select a mountain from 1 - 10 / / / " 
      puts ""
    end 
    
    def get_mountains
      @mountains = AlpinePro::Mountain.all
    end 
    
    def list_mountains
      @mountains.each.with_index(1) do |mountain, i|
        puts "#{i}. #{mountain.name}"
      end 
    end 
end 