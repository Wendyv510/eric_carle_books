class EricCarleBooks::Scraper 

      
  def self.get_books 
    @doc = Nokogiri::HTML(open("https://www.teachervision.com/authors/top-10-books-eric-carle"))
    
    titles = @doc.css("div.collection-title")
    titles.each_with_index do |title, index|
      title=title.text
      description = @doc.css("div.collection-body")[index].text 
      activity = @doc.css("div.collection-body a").each {|anchor|anchor["href"]}[index]
       book = EricCarleBooks::Books.new(title,description,activity)
    end 
  end 
end 