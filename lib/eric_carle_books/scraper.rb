class EricCarleBooks::Scraper 

  
  def get_books
    @doc = Nokogiri::HTML(open("http://www.eric-carle.com/ECbooks.html"))
    book = EricCarleBooks::Books.new 
    EricCarleBooks::Books.title = doc.css("span.booktitle").text 
    EricCarleBooks::Books.year_published = doc.css("span").text[0]
    EricCarleBooks::Books.description = doc.css ("span").text [1] 
  end 
      
end 