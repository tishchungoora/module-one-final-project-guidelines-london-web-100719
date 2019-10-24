class School < ActiveRecord::Base
    has_many :reviews
    has_many :courses, through: :reviews
    has_many :users, through: :reviews

    def self.find_reviews_by_school(school_name)
        school = self.find_by(name: "Flatiron School")
        school.reviews.map {|review| review.content}
    end

end