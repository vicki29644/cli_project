class Cli
    def run              #cli class will greet the user and run the cli- also is user input and output 
    print_welcome
      Api.get_got    
      main
    end

    def main                            #expand functionallity, tell projet to do! print all of the house, information, for them also 
      print_all 
      print_selection_prompt
      user_input
      validation
   end


    def print_welcome
      puts "Welcome to the Game of Thrones Cli!"
    end

    def print_all
      Got.all.each.with_index(1) do |p,i|
      puts "#{i}. #{p.houses}"    
      end 
    end
      
    
    
    def print_selection_prompt
      puts "select a number for more information."     
    end

    def print_continue
      puts "would you like to continue? (y/n)"
    end 
    
    def print_error 
      puts "Wrong selection, try again!"
    end 
    
    def user_input
     index = gets.strip.to_i - 1
     amount = Got.all.size - 1
     until index.between?(0,amount)
     print_error                                 # User's input
     index = gets.strip.to_i - 1 
     end
     got = Got.all[index]
      puts "HOUSES:" + got.houses 
      puts "REGION:" + got.region
      puts "COAT_OF_ARMS:" + got.coat_of_arms 
    end
    
    
    def validation
      print_continue
      input=gets.strip.downcase      #users input information and make it downcase
    if input == "yes" || input == "y"
      print_all                        
      print_selection_prompt
      user_input
      validation   
    elsif
      input == "no" || input == "n"
      print_goodbye
      exit 
    else 
      print_error 
      validation
    end
    end  
      
    
    def print_goodbye
      puts "Thank you for checking out Game of Thrones Cli, have a great day!"
    end

end