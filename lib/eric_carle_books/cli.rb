EricCarleBooks::CLI 

def greeting
    puts "Hello, are you looking for the books Eric Carle has written? Y/N"
  input = "" 
  input = gets.chomp 
      if input == "Y"
        puts EricCarleBooks::Scraper.get_books 
             info_prompt 
      else 
        puts "Sorry, we can't help you."
      end 
  end 
  
  def info_prompt  
    puts "Would you like more info on a book? Y/N"
   input = "" 
   input = gets.chomp 
    if input == "Y" 
      "Please type title you would like more info on."
         EricCarleBooks::Scraper.get_info(gets.chomp)
    else input == "N" 
      "Have a nice day."
    end 
  end 
      