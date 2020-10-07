class Cli
    def run
      welcome
      Api.get_got
      main
    end
    
    def main
      print_all
    end 
    
    def validation
      print_continue
      input=gets.strip.downcase      #users input information and make it downcase
    if input == "yes" || input "y"
      print_all                       # work of this still 
      print_selection_prompt
      user_input 
      validation
    else
      print_goodbye
      'Thank you for checking out Game of Thrones Houses, have a great day!'
    exit
    end
     #validation-know what this statement mean
     #def welcome
       # puts 'Welcome to the Game of Thrones Cli!'
      #end
    
      #def print_all
       # Got.all.each {|p| puts "#{p.id}.1} #{p.name}" }
      #end
     
      #def choose_selection_prompt
    #'Please select either a one of the houses or its number for more information'#coat of arms, region
            
     # def prompt_selection
      #  get.chomp
     # end  
    
     #'If a wrong number is pushed or the information is not available quote "Please make a different selection"!'
    