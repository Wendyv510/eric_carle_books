#require "pry"
require "nokogiri" 
require "open-uri" 
require_relative "eric_carle_books/version"
require_relative "eric_carle_books/books"
require_relative "eric_carle_books/scraper"
require_relative "eric_carle_books/cli"


module EricCarleBooks
  class Error < StandardError; end
  # Your code goes here...
end
