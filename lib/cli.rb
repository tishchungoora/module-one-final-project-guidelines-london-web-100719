class Cli
    def initialize
        @user = nil
    end

    def login(username)
        @user = User.find_or_create_by_username(username)
    end

    def manage_menu
        puts "Please select an option from below:"
        puts "- update : update the content of a review"
        puts "- delete : delete a review"
        puts "- exit : return to user menu"
        gets.chomp
    end

    def update_review
        # user reviews
        # select specific review
        puts "Now type your new review:"
        new_content = gets.chomp
        review.update_review_content(new_content)
        puts "Your review has been submitted. Thank you!"
    end

    def delete_review
        # user reviews
        # select specific review
        # destroy
    end

    def run_manage_reviews
        choice = manage_menu
        case choice
        when "update"
            puts "Run update method"
        when "delete"
            puts "Run delete method"
        when "exit"
            manage_menu
        end
        manage_menu
    end

end