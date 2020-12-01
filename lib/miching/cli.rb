class CLI

    @@genres = ["chamber", "keyboard", "orchestral", "vocal"]


    def call 
        welcome 
        display_genres 
        ask_for_input
        process_request
        save_and_display_output
        play_again 
        display_saved_songs 
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
        sleep(1)
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
        @user_response = gets.chomp 
        if @@genres.include?(@user_response) == true 
            API.get_songs(@user_response) if Song.find_by_genre(@user_response).size == 0
        elsif 
           @user_response == "exit"
            puts "\n"
            puts "\n"
            goodbye 
            exit  
        else 
            puts "please try again!"
            puts "\n"
            puts "\n"
            process_request
        end 
    end 

    def save_and_display_output
        puts "\n"
        puts "\n"
        sleep(3)
        binding.pry 
        puts Song.provide_title(@user_response)
        puts "\n"
        puts "\n"
        sleep(3)
    end 

    def play_again
        puts "would you like to play again? type 'yes' or 'no'"
        puts "\n"
        puts "\n"
        @user_response = gets.chomp
        if @user_response == "yes"
            puts "\n"
            puts "\n"
            display_genres
            ask_for_input
            process_request
            save_and_display_output
            play_again 
        elsif
            @user_response == "no"
            puts "\n"
            puts "\n"
            puts "danke"
        else 
            puts "invalid response!"
            play_again 
        end 
    end

    def display_saved_songs
        puts "\n"
        puts "\n"
        sleep(3)
        Song.find_saved.each { |s| puts "#{s.title} - #{s.genre}"} 
        puts "\n"
        puts "\n"
        sleep(3)
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