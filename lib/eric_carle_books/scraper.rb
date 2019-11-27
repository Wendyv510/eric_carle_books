class EricCarleBooks::Scraper 
  
  def self.get_books 
    book_list = []
    doc = Nokogiri::HTML(open("http://www.eric-carle.com/ECbooks.html"))
    title = doc.css("span.booktitle")
    book_list << EricCarleBooks::Books.new
    book_list  
     
  end 

  def self.get_info(title) 
     Books.all.select {|book| book.title}
     year_published = doc.css("span").text[0] 
     description = doc.css ("span").text [1] 
  end 
      
  
  
end 