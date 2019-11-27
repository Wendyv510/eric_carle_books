class EricCarleBooks::Scraper 
  
  
  def self.get_page 
    doc = Nokogiri::HTML(open("http://www.eric-carle.com/ECbooks.html"))
    
  end 
  
  def self.get_books 
    title = doc.css("span.booktitle")
    EricCarleBooks::Books.new(title) 
    Books.all 
  end 

  def self.get_info(title) 
     Books.all.select {|book| book.title}
     year_published = doc.css("span").text[0] 
     description = doc.css ("span").text [1] 
  end 
      
  
  
end 