class EricCarleBooks::Scraper 

  
  def get_books
    @doc = Nokogiri::HTML(open("http://www.eric-carle.com/ECbooks.html"))
    Book = EricCarleBooks::Books.new 
    Books.title = doc.css("span.booktitle").text 
    Books.year_published = doc.css("span").text[0]
    Books.description = doc.css ("span").text [1] 
  end 
      
end 