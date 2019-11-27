class EricCarleBooks::Scraper 
  
  
  def self.get_books 
    books = []
    doc = Nokogiri::HTML(open("http://www.eric-carle.com/ECbooks.html"))
    title = doc.css("span.booktitle")
    books << EricCarleBooks::Books.new
    books 
     
  end 

  def self.get_info(title) 
     Books.all.select {|book| book.title}
     year_published = doc.css("span").text[0] 
     description = doc.css ("span").text [1] 
  end 
      
  
  
end 