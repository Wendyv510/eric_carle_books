class EricCarleBooks::Scraper 

  
  def get_books
    @doc = Nokogiri::HTML(open("http://www.eric-carle.com/ECbooks.html"))
    book = EricCarleBooks::Books.new 
    book.title = @doc.css("span.booktitle").text 
    book.year_published = @doc.css("span").text[0]
    #book.description = @doc.css ("span").text [1] 
  end 
      
end 