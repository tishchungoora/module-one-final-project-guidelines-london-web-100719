class Review < ActiveRecord::Base
    belongs_to :school
    belongs_to :course
    belongs_to :user

    def update_review_content(content)
        self.update(content: content)
    end
end