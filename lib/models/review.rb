class Review < ActiveRecord::Base
    belongs_to :school
    belongs_to :course
    belongs_to :user

    def self.find_review_by_id(rev_id)
        self.find_by(id: rev_id)
    end
    
    def update_review_content(content)
        self.update(content: content)
    end

    def delete_review
        self.destroy
    end

end