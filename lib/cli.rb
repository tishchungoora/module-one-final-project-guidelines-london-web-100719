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

    def run_read_reviews
        choice = read_menu
        case choice
        when "school"
            view_by_school
        when "rating"
            view_by_rating
        when "keyword"
            search_by_keyword
        when "exit"
            read_menu
        end
        read_menu
    end
        
end