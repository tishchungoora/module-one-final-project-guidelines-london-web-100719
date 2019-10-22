# require '../lib/models/course.rb'
# require '../lib/models/review.rb'
# require '../lib/models/school.rb'
# require '../lib/models/user.rb'

class WriteReviewApp

    def initial_menu
        puts "Please choose one of the review categories:"
        puts "- school : select from a school"
        puts "- exit : return to user menu"
    end

    def get_initial_input
        gets.chomp
    end

    def school_menu
        puts "- fs : Flatiron School"
        puts "- ga : General Assembly"
        puts "- ms : Makers Academy"
    end

    def get_school_input
        gets.chomp

    def course_menu
        puts "- cs : cybersecurity"
        puts "- ds : data science"
        puts "- se : software engineering"
        puts "- ux : user experience"
    end

    def get_course_input
        gets.chomp
    end

    def format_menu
        puts "- in-person : course delivered in-person"
        puts "- online : course delivered online"
    end

    def get_format_input
        gets.chomp
    end

    def get_rating
        puts "Input a rating, 1-5 (5 being the highest)"
        gets.chomp
    end

    def get_content
        puts "Input the review. Press enter when complete."
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
        puts "Your input is invalid. Please start again"
    end

    def run_write_review_app
        initial_menu
        initial_input = get_initial_input.downcase
        if initial_input == "school"
            
            course_menu
            course_input = get_course_input.downcase
            if course_input == ("cs" || "ds" || "se" || "ux") 

                school_menu
                school_input = get_school_input.downcase
                if school_input == ("fs" || "ga" || "ma")
                
                    format_menu
                    format_input = get_format_input.downcase
                    if format_input = ("in-person" || "online")

                        rating_input = get_rating
                        content_input = get_content
                        review_confirmation_input = get_review_confirmation.upcase
                        if review_confirmation_input == "Y"

                            puts "Hello World"
                            # school = School.all
                            ##.find(school ) # some match for fs/ga/ma to the school instance
                            # course = Course.all
                            ##.find(course ) # some match for cs/ds/se/ux to the course instance
                            # user = User.all.find(user.logged_in = true)

                            # Review.new(school: school, course: course, user: user, rating: rating_input, content: content_input)

                        else review_confirmation_input == "N"
                            return_to_main_menu
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