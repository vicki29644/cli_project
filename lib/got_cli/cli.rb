class Cli
  binding.pry
    def run              #cli class will greet the user and run the cli 
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
    

    def user_input
    index = gets.strip.to_i - 1
    amount = Got.all.size - 1
    until index.between?(0,amount)
          print_error
          index = gets.strip.to_i - 
    
        got = Got.all[index]
        houses = got["name"]  
        region = got["region"]
        coat_of_arms =got["coatOfArms"]   

  end
    
    def validation
      print_continue
      input=gets.strip.downcase      #users input information and make it downcase
    if input == "yes" || input == "y"
      print_all                        
      print_selection_prompt
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
                                                    #validation-know what this statement mean
      def welcome
      puts "Welcome to the Game of Thrones Cli!"
      end
    
      def print_all
      Got.all.each.with_index(1) {|p,i| puts "#{i}. #{p.houses}"}     
      end
      
      def print_selection_prompt
      puts "select a number for more information."     
      end

      def print_continue
        puts "\n\nwould you like to continue? (y/n)"
      end

      def print_error 
      puts "Wrong selection, try again!"
  end 
end
end