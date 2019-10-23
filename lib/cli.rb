class Cli
    def initialize
        @user = nil
    end

    def login(username)
        @user = User.find_by_username(username)
    end

    def greet
        puts "Hello, what is your username?"
        gets.chomp
    end

    def menu
        puts "Please select from the following:"
        puts "- read : browse all reviews"
        puts "- manage : submit, read, update and delete from your reviews"
        puts "- exit : end your session"
        gets.chomp
    end

    def goodbye
        puts "Thank you, goodbye!"
    end

    def run
        input = greet
        login(input)
        menu
        goodbye
    end


end