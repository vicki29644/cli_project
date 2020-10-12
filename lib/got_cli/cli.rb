class Cli
    def run              #cli class will greet the user and run the cli- also is user input and output 
    #binding.pry 
    print_welcome
      Api.get_got    
      main
      print_all
    end

    def print_welcome
      puts "Welcome to the Game of Thrones Cli!"
    end

    def print_all
      Got.all.each.with_index(1) do |p,i|
        # puts "#{index} .) #{got.houses}" 
        # puts "----------------"
        puts "#{i}. #{p.houses}"   
        # puts "#{i}. #{p.region}" 
        # puts "#{i}, #{p.coat_of_arms}"
        # puts "----------------" 
      end 
    end
      
    
    
    def print_selection_prompt
      puts "select a number for more information."     
    end

    def print_continue
      puts "would you like to continue? (y/n)"
    end
    
    # def prompt_seletion
    #     gets.chomp
    # end  
    
    def print_error 
      puts "Wrong selection, try again!"
    end 
    
    def main                            #expand functionallity, tell projet to do! print all of the house, information, for them also 
        print_all 
        print_selection_prompt
        user_input
        validation
        # print_continue
        # prompt_selection
    # continue?(prompt_seletion)
    end

    def user_input
     index = gets.strip.to_i - 1
     amount = Got.all.size - 1
     until index.between?(0,amount)
     print_error
     index = gets.strip.to_i - 1 
     prompt_seletion
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