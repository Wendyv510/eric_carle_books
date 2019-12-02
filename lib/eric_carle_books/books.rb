class EricCarleBooks::Books 
  
  attr_accessor :title, :year_published, :description 
  
  @@all = [] 
  
  def self.all 
    @@all 
  end 
  
  def save 
    @@all << self 
  end 
      
end 
