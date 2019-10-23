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
            puts "Launching feature tomorrow...!"
        when "exit"
            exit
        end
        exit
    end

end