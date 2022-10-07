class AddDescriptionToWorkExperience < ActiveRecord::Migration[6.1]
  def change
    add_column :workexperiences, :description, :text
  end
end
