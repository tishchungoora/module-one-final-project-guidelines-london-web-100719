class School < ActiveRecord::Base
    has_many :reviews
    has_many :courses, through: :reviews
    has_many :users, through: :reviews

    def school_reviews
        self.reviews.uniq
    end

    def school_courses
        self.courses.uniq
    end

end