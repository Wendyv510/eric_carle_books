class EricCarleBooks::Scraper 

      
  def self.get_books 
    @doc = Nokogiri::HTML(open("https://www.teachervision.com/authors/top-10-books-eric-carle"))
    
    titles = @doc.css("div.collection-title")
    titles.each_with_index do |title, index|
      title=title.text
      description = @doc.css("div.collection-body")[index].text 
       book = EricCarleBooks::Books.new(title,description)
    end 
  end 
end 