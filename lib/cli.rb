class Cli
    def initialize
        @user = nil
    end

    def login(username)
        @user = User.find_or_create_by_username(username)
    end

    def greet
        puts "Hello, what is your username?"
        gets.chomp
    end

    def menu
        puts "Please select from the following:"
        puts "- read : browse all reviews"
        puts "- submit: submit a review"
        puts "- manage : update or delete your reviews"
        puts "- exit : end your session"
        gets.chomp
    end

    def exit
        puts "Thank you, goodbye!"
    end

    def submit_review
        puts "Pick a school - Flatiron School, General Assembly, or Makers Academy:"
        school_name = gets.chomp
        school = School.find_by(name: school_name)

        puts "Pick a course - Cybersecurity, Data Science, User Experience Design, Software Engineering:"
        course_topic = gets.chomp
        course = Course.find_by(topic: course_topic)

        puts "Enter your rating - 1-5 (5 being highest):"
        rating = gets.chomp.to_i

        puts "Enter your review:"
        content = gets.chomp

        review = Review.new(user: @user, school: school, course: course, rating: rating, content: content)
        review.save
    end

    def run
        input = greet
        login(input)
        choice = menu
        case choice
        when "read"
            puts "Launching feature tomorrow...!"
        when "submit"
            submit_review
        when "manage"
            run_manage_reviews
        when "exit"
            exit
        end
        exit
    end

    #### Manage review methods ###
    def manage_menu
        puts "Please select an option from below:"
        puts "- update : update the content of a review"
        puts "- delete : delete a review"
        puts "- exit : return to user menu"
        gets.chomp
    end

    def update_review
        puts "Your current reviews are listed below:"
        @user.display_user_reviews

        puts "Enter the id of the review you would like to change:"
        id_input = gets.chomp

        puts "Now type your new review:"
        new_content = gets.chomp

        review = Review.find_review_by_id(id_input)
        review.update_review_content(new_content)
        puts "Your review has been submitted. Thank you!"
    end

    def delete_review
        puts "Your current reviews are listed below:"
        @user.display_user_reviews

        puts "Input the id of the review you would like to delete and press enter:"
        id_input = gets.chomp

        review = Review.find_review_by_id(id_input)
        review.delete_review
        puts "Your review has been deleted. Thank you!"
    end

    def exit
        puts "Thank you, goodbye!"
    end

    def continue_prompt
        puts "Would you like to continue (Y/N)?"
        gets.chomp
    end

    def run_manage_reviews
        manage_choice = manage_menu
        if manage_choice == "exit"
        elsif manage_choice == "update"
            update_review
        elsif manage_choice == "delete"
            delete_review
        end

        # continue_choice = continue_prompt
        # if continue_choice == "y"
        #     run_manage_reviews
        # elsif continue_choice == "n"
        #     exit
        # end
    end

end