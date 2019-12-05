class EricCarleBooks::CLI 

  def greeting
    puts "Hello, are you looking for the books Eric Carle has written? Y/N"
   
  input = gets.chomp 
      if input == "Y"
         EricCarleBooks::Scraper.get_books 
             list_books 
             info_prompt
      else 
        puts "Sorry, we can't help you."
      end 
  end

  def list_books 
    EricCarleBooks::Books.all.each_with_index do |book,i|
      puts "#{i+1} #{book.title}" 
    end 
  end 
  
  def info_prompt  
    puts "Please select what number of the book you would you like more info on or exit."
   input = "" 
   input = gets.chomp 
    if input.to_i-1<=EricCarleBooks::Books.all.size 
          book = EricCarleBooks::Books.all[input.to_i-1]
            #puts book.year_published 
            puts book.description 
    else input == "exit" 
      "Have a nice day."
    end 
  end 

end   