require "./lib/bootcamp_reviews_app.rb"

def get_username
    puts "Please enter your username:"
    gets.chomp
end    

def get_password
    puts "Please enter your password:"
    gets.chomp
end

def user_check(username, password)
    ######################################
    ###      TEST THIS METHOD!!!!!!    ###
    ######################################
    if false #username || password # User.where(username: username, password: password)
        #User.logged_in = true
        true
    else
        false
    end
end

def invalid_user
    puts "Your username or password is invalid. Would you like to try again (Y/N)?"
    gets.chomp
end

def manage_menu_greeting(username)
    puts "Select account management options for '#{username}':"
    puts "- write : write a new review"
    puts "- read : read your review(s)"
    puts "- manage : manage your username and/or password"
end