class EricCarleBooks::Scraper 
  
  def get_page 
    doc = Nokogiri::HTML(open("http://www.eric-carle.com/ECbooks.html"))
  end 
  
  def get_books 
    self.get_page.css("span.booktitle")
    book = Books.new 
  end 

  def get_info(title) 
    self.get_books.select {|book| book.title}
     # book.year_published = doc.css("span").text[0] 
      #book.description = doc.css ("span").text [1] 
  end 
      
  
  
end 