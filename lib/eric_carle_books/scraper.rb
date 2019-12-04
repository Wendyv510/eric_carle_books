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
    @doc = Nokogiri::HTML(open("https://www.teachervision.com/authors/top-10-books-eric-carle"))
    
    title = @doc.css("div.collection-title").text
    description = @doc.css("div.collection-body").text 
    
    book = EricCarleBooks::Books.new(title)

  end 
end 