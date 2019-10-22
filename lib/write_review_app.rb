# require '../lib/models/course.rb'
# require '../lib/models/review.rb'
# require '../lib/models/school.rb'
# require '../lib/models/user.rb'

class WriteReviewApp

    def initial_menu
        puts "Please choose one of the options:"
        puts "- school : select a school to review"
        puts "- exit : return to user menu"
    end

    def get_initial_input
        gets.chomp
    end

    def school_menu
        puts "Choose the school to review:"
        puts "- fs : Flatiron School"
        puts "- ga : General Assembly"
        puts "- ma : Makers Academy"
    end

    def get_school_input
        gets.chomp
    end

    def topic_menu
        puts "Choose the course topic:"
        puts "- cs : cybersecurity"
        puts "- ds : data science"
        puts "- se : software engineering"
        puts "- ux : user experience"
    end

    def get_topic_input
        gets.chomp
    end

    def format_menu
        puts "Choose the course format:"
        puts "- in-person : course delivered in-person"
        puts "- online : course delivered online"
    end

    def get_format_input
        gets.chomp
    end

    def get_rating
        puts "Give a rating, 1-5 (5 being the highest)."
        gets.chomp
    end

    def get_content
        puts "Please type your review; press enter when complete."
        gets.chomp
    end

    def get_review_confirmation
        puts "Submit this review? (Y/N)"
        gets.chomp
    end

    def return_to_main_menu
        run_manage_menu
    end

    def invalid_input
        false
        puts "Your input is invalid. Please start again."
    end

    def run_write_review_app
        initial_menu
        initial_input = get_initial_input.downcase
        if initial_input == "school"
            
            school_menu
            school_input = get_school_input.downcase
            if school_input == "fs" || "ga" || "ma"
                
                topic_menu
                topic_input = get_topic_input.downcase
                if topic_input == "cs" || "ds" || "se" || "ux"
                    
                    format_menu
                    format_input = get_format_input.downcase
                    if format_input = "in-person" || "online"

                        rating_input = get_rating # run a check
                        content_input = get_content # run a check
                        review_confirmation_input = get_review_confirmation.upcase
                        if review_confirmation_input == "Y"

                            puts "Hello World"
                            # school = School.all
                            ##.find(school ) # match fs/ga/ma to the school instance
                            # course = Course.all
                            ##.find(course ) # match cs/ds/se/ux to the course instance
                            # user = User.all.find(user.logged_in = true)

                            # Review.new(school: school, course: course, user: user, rating: rating_input, content: content_input)

                        elsif review_confirmation_input == "N"
                            return_to_main_menu
                        else
                            invalid_input
                            run_write_review_app
                        end

                    else
                        invalid_input
                        run_write_review_app
                    end

                else
                    invalid_input
                    run_write_review_app
                end

            else
                invalid_input
                run_write_review_app
            end

        elsif initial_input.downcase == "exit"
            return_to_main_menu
        else
            invalid_input
            run_write_review_app
        end

    end
end


    # User class
    # t.string :username
    # t.string :password
    # t.boolean :logged_in # assign the review to user_id of user where logged_in = true

    # School class
    # t.string :name

    # Course class
    # t.string :topic # get_course_input
    # t.boolean :is_online # get_format_input
    # t.boolean :is_in_person

    # Review class
    # t.integer :school_id
    # t.integer :course_id
    # t.integer :user_id
    # t.integer :rating
    # t.text :content

    # def new_review(id of school instance, id of course instance, id of user, rating, content)
    #     # incomplete
    #     # course = Course.new(topic: "ds", is_online: true, is_in_person: true) 
    #     # course
    # end

#end

# test = WriteReviewApp.new
# test.new_course
# puts "Hello World"