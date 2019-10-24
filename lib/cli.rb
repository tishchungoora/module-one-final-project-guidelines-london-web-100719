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

    ### Read all reviews
    def read_menu
        puts "Please select a viewing method:"
        puts "- school : view by school"
        puts "- rating : view by rating"
        puts "- keyword : search by keyword"
        puts "- exit : return to main menu"
        gets.chomp
    end

    def view_by_school
        puts "Pick a school - Flatiron School, General Assembly, or Makers Academy:"
        school_name = gets.chomp
        puts School.find_reviews_by_school(school_name)
    end

    def view_by_rating
        puts "Pick a filter:"
        puts "- highest : view from highest to lowest rating"
        puts "- lowest : view from lowest to highest rating"
        puts "- top : show reviews with ratings 4 and 5"
        filter = gets.chomp

        case filter
        when "highest"
            puts Review.get_highest_reviews
        when "lowest"
            puts Review.get_lowest_reviews
        when "top"
            puts Review.get_top_reviews
        end
    end

    def search_by_keyword
        puts "Input keyword to search:"
        keyword = gets.chomp
        puts Review.find_by_keyword(keyword)
    end

    def exit
        puts "Thank you, goodbye!"
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

    def continue_prompt
        puts "Would you like to continue (Y/N)?"
        gets.chomp
    end

    def run_read_reviews
        read_choice = read_menu
        if read_choice == "exit"
        elsif read_choice == "school"
            view_by_school
        elsif read_choice == "rating"
            view_by_rating
        elsif read_choice == "keyword"
            search_by_keyword
        end

        continue_choice = continue_prompt
        if continue_choice == "y"
            run_read_reviews
        elsif continue_choice == "n"
            exit
        end
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