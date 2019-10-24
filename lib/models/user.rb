class User < ActiveRecord::Base
    has_many :reviews
    has_many :schools, through: :reviews
    has_many :courses, through: :reviews

    def self.find_or_create(username)
        self.find_or_create_by(username: username)
    end

end