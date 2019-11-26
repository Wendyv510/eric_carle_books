require_relative './scraper.rb'
require_relative './bin/run'

class EricCarleBooks::Books 
  
  attr_accessor :title, :year_published, :description 
  
  @@all = [] 
  
  def initialize 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def greeting
    puts "Hello, are you looking for the books Eric Carle has written? Y/N"

  input = gets.chomp 
      if input == Y 
        Scraper.get_books 
      else 
        puts "Sorry, we can't help you."
      end 
  end 
  
  def info_prompt  
    puts "Would you like more info on a book? Y/N"
    
   input = gets.chomp 
    if input == Y 
      "Please type title you would like more info on."
         Scraper.get_info(gets.chomp)
    else input == N 
      "Have a nice day."
    end 
  end 
      
  
end 
