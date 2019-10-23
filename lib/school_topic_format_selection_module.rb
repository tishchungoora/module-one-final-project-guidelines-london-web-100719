module SchoolTopicFormatSelection

    def school_menu
        puts "Choose the school:"
        puts "- fs : Flatiron School"
        puts "- ga : General Assembly"
        puts "- ma : Makers Academy"
    end

    def get_school_input
        STDIN.gets.chomp
    end

    def return_school_id(school_name)
        school = School.find_by(name: school_name)
        school.id
    end

    def topic_menu
        puts "Choose the course topic:"
        puts "- cs : cybersecurity"
        puts "- ds : data science"
        puts "- se : software engineering"
        puts "- ux : user experience"
    end

    def get_topic_input
        STDIN.gets.chomp
    end

    def format_menu
        puts "Choose the course format:"
        puts "- in-person : course delivered in-person"
        puts "- online : course delivered online"
    end

    def get_format_input
        STDIN.gets.chomp
    end

    def invalid_input
        puts "Your input is invalid. Please try again."
    end

end