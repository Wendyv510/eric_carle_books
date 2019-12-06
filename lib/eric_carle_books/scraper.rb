class EricCarleBooks::Scraper 

      
  def self.get_books 
    @doc = Nokogiri::HTML(open("https://www.teachervision.com/authors/top-10-books-eric-carle"))
    root_url = "https://www.teachervision.com"
    titles = @doc.css("div.collection-title")
    titles.each_with_index do |title, index|
      title=title.text
      description = @doc.css("div.collection-body")[index].text 
      if  @doc.css("div.collection-body a")[index] == nil 
        activity = "Sorry, no link to this activity."
      else 
       link= @doc.css("div.collection-body a")[index].attributes["href"].value
      activity = root_url + link 
     end 
      book = EricCarleBooks::Books.new(title,description,activity)
    end 
  end 
end 