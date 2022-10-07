class CreateWorkfeatures < ActiveRecord::Migration[6.1]
  def change
    create_table :workfeatures do |t|
      t.string :name

      t.timestamps
    end
  end
end
