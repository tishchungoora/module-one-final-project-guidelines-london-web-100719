class Cli
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

    def continue
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
        
end