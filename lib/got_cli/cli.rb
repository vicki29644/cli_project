class Cli
    def run
      welcome
      Api.get_got
      print_all
    end
    

    
    def validation
      print_continue
      input=gets.strip.downcase      #users input information and make it downcase
    if input == "yes" || input == "y"
      print_all                       # work of this still 
      print_selection_prompt
      user_input 
      validation
    else
      print_goodbye
      'Thank you for checking out Game of Thrones Houses, have a great day!'
    
     exit
    end
     end
     #validation-know what this statement mean
     def welcome
      puts 'Welcome to the Game of Thrones Cli!'
      end
    
      def print_all
       Got.all.each.with_index(1) {|p,i| puts "#{i}. #{p.houses}"}
      end
     
      def choose_selection_prompt
      puts 'select either a one of the houses or its number for more information, coat of arms, or region'
      end

     # def prompt_selection
      #  get.chomp
     # end  
    
     #'If a wrong number is pushed or the information is not available quote "Please make a different selection"!'
 
end 