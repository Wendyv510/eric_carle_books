class EricCarleBooks::Scraper 

  
  #def self.get_books
   # @doc = Nokogiri::HTML(open("http://www.eric-carle.com/ECbooks.html"))
    
    #title = @doc.css("span.booktitle").text 
    #year_published = @doc.css("span").text[0]
    #book.description = @doc.css ("span").text [1]
    #titles = @doc.css("span.booktitle")
     #  titles.each do |title|
         
      # end 
    #book = EricCarleBooks::Books.new(title,year_published)
  #end 
      
  def self.get_books 
    @doc = Nokogiri::HTML(open("https://www.scholastic.com/parents/books-and-reading/book-lists-and-recommendations/favorites-classics/49-books-eric-carle.html"))
    
    title = @doc.css("div.card-title")
   
    
    book = EricCarleBooks::Books.new(title)
    
    
  end 
end 