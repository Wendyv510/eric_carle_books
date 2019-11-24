#!/usr/bin/env ruby 

sudo chmod +x bin/run.rb 

require_relative './books.rb'
require_relative './scraper.rb'
require_relative './Gemfile' 

Books.new.greeting 