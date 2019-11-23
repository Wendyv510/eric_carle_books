#!/usr/bin/env ruby 

sudo chmod +x bin/run.rb 

require_relative './books.rb'
require_relative './scraper.rb'
require_relative './Gemfile' 

puts "Hello, are you looking for the books Eric Carle has written? Y/N"

  input = gets.chomp 
      if input == Y 
        Scraper.get_books 
      else 
        puts "Sorry, we can't help you."
      end 