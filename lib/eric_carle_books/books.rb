class EricCarleBooks::Books 
  
  attr_accessor :title, :activity, :description 
  
  @@all = [] 
  
  def initialize(title,description) 
    @title = title 
    @description = description 
    @activity = activity 
    self.save
  end 
  
  def self.all 
    @@all 
  end 
  
  def save 
    @@all << self 
  end 
      
end 
