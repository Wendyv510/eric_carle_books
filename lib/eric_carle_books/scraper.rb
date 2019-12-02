class EricCarleBooks::Scraper 
  
  
  def book_list 
    @book_list = book_list 
    book_list = []
    book_list << title
  end 
  
  def self.get_books
    @doc = doc 
    doc = Nokogiri::HTML(open("http://www.eric-carle.com/ECbooks.html"))
    title = doc.css("span.booktitle")
    book_list 
  end 

  def self.get_info(title) 
     Books.all.select {|book| book.title}
     year_published = doc.css("span").text[0] 
     description = doc.css ("span").text [1] 
  end 
      
  
  
end 