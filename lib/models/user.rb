class User < ActiveRecord::Base
    has_many :reviews
    has_many :schools, through: :reviews
    has_many :courses, through: :reviews

    def display_user_reviews
        self.reviews.each {|review| puts "#{review.id}. #{review.content}"}
    end

    def self.find_or_create_by_username(username)
        self.find_or_create_by(username: username)
    end

end