require_relative 'mountain.rb'
require_relative 'scraper.rb'
require 'colorize'
require 'readline'

module AlpinePro
  class CLI 
    
    #Program begins by running the list_altitude method 
    def start 
      list_altitude
    end 
  
    #Greeting 
    def list_altitude
      puts ""
      puts "Hello Explorer! Please indicate your desired summit altitude.".black.bold
      puts "\nSelect an altitude from 1 - 4".blue.bold 
      puts ""
    end 
  end 
end 