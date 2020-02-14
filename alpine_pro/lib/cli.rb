

module AlpinePro
  class CLI 
    
    #Program begins by running the list_mountains method 
    def start 
      list_mountains
    end 
  
    #Greeting 
    def list_mountains
      puts ""
      puts "Hello Explorer! Please select a mountain to learn more about.".black.bold
      puts "\n/\/\/\ Select an altitude from 1 - 10 /\/\/\ ".blue.bold 
      puts ""
      
    end 
    
    
    
  end 
end 