class EricCarleBooks::Books 
  
  attr_accessor :title, :year_published, :description 
  
  @@all = [] 
  
  def initialize 
    @title = title 
    @year_published = year_published 
    @description = description 
  end 
  
  def self.all 
    @@all 
  end 
  
  def save 
    @@all << self 
  end 
      
end 
