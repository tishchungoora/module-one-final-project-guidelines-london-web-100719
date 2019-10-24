class Course < ActiveRecord::Base
    has_many :reviews
    has_many :schools, through: :reviews
    has_many :users, through: :reviews

    def course_reviews
        self.reviews.uniq
    end

    def course_schools
        self.schools.uniq
    end

    def self.find_or_create(topic)
        self.find_or_create_by(topic: topic)
    end

end