class CreateProjectfeatures < ActiveRecord::Migration[6.1]
  def change
    create_table :projectfeatures do |t|

      t.timestamps
    end
  end
end
