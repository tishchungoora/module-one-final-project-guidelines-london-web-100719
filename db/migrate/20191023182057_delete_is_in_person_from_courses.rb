class DeleteIsInPersonFromCourses < ActiveRecord::Migration[5.2]
  def change
    remove_column :courses, :is_in_person
  end
end
