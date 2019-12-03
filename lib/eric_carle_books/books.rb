class EricCarleBooks::Books 
  
  attr_accessor :title, :year_published, :description 
  
  @@all = [] 
  
  def initialize(title,year_published) 
    @title = title 
    @year_published = year_published 
    #@description = description 
    self.save
  end 
  
  def self.all 
    @@all 
  end 
  
  def save 
    @@all << self 
  end 
      
end 
