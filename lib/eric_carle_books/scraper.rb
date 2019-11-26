class EricCarleBooks::Scraper 
  
  
  def self.get_page 
    doc = Nokogiri::HTML(open("http://www.eric-carle.com/ECbooks.html"))
  end 
  
  def self.get_books 
    title = self.get_page.css("span.booktitle")
    book = Books.new 
  end 

  def self.get_info(title) 
    self.get_books.select {|book| book.title}
     year_published = doc.css("span").text[0] 
     description = doc.css ("span").text [1] 
  end 
      
  
  
end 