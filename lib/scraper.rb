require 'nokogiri'
require 'open-uri'
require 'pry'

require_relative './eric_carle_books.rb' 

class Scraper 
  
  def get_page 
    doc = Nokogiri::HTML(open(http://www.eric-carle.com/ECbooks.html))
  end 
  
  def get_books 
    self.get_page.css("span.booktitle")
  end 
  
  def make_books 
    self.get_books.each do |book|
      book = Books.new 
      book.title =  doc.css("span.booktitle")
      book.year_published = doc.css("span").text[0] 
      book.description = doc.css ("span").text [1] 
  end 
      
  
  
end 