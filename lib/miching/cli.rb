
class CLI
    
    @@genres = ["chamber", "keyboard", "orchestral", "vocal"]

    def call 
        welcome 
        display_genres 
        ask_for_input
        process_request
        display_output
        goodbye
    end 

    def welcome
        puts "                                            *"
        puts "\n"
        sleep(1) 
        puts "                                      **"
        puts "\n"
        sleep(1) 
        puts "                              ***" 
        puts "\n"
        sleep(1) 
        puts "              guten tag"
        puts "\n"
        puts "\n"
        sleep(3)
        puts "here are your choices"
        puts "\n"
        puts "\n"
        sleep(3)
    end 

    def display_genres 
        @@genres.each {|genre| puts "#{genre}"}
        puts "\n"
        sleep(3)
    end 

    def ask_for_input
        puts "\n"
        puts "please enter your desired genre and press return"
        puts "\n"
        puts "\n"
        sleep(1)
        puts "if you wish to exit the program, type 'exit' and press return"
        puts "\n"
        puts "\n"
    end 

    def process_request
        user_response = gets.chomp
        API.get_songs(user_response)
    end 

    def display_output
        puts "\n"
        puts "\n"
        puts "\n"
        sleep(3)
        Song.provide_title
        puts "\n"
        puts "\n"
        puts "\n"
        sleep(5)
    end 

    def goodbye
        puts "*"
        puts "\n"
        sleep(1) 
        puts "   **"
        puts "\n"
        sleep(1) 
        puts "        ***" 
        puts "\n"
        sleep(1) 
        puts "              auf wiedersehen"
    end 

end