class DeleteIsOnlineIsInPersonFromCourses < ActiveRecord::Migration[5.2]
  def change
    remove_column :courses, :in_in_person
    remove_column :courses, :is_online
  end
end
