require "eric_carle_books/version"
require 'pry'
require './scraper.rb'


module EricCarleBooks
  class Error < StandardError; end
  # Your code goes here...
end

class Books 
  
  attr_accessor :title, :year_published, :description 
  
  @@all = [] 
  
  def initialize 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
end 
