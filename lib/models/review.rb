class Review < ActiveRecord::Base
    belongs_to :school
    belongs_to :course
    belongs_to :user

    def self.get_highest_reviews
        self.order(rating: :desc).limit(10)
    end

    def self.get_lowest_reviews 
        self.order(rating: :asc).limit(10)
    end

    def self.get_top_reviews
        self.where("rating > ?", 3)
    end

    def self.find_by_keyword(keyword)
        self.all.select {|review| review.content.include?(keyword)}
    end

end