class AddNameToProjectfeature < ActiveRecord::Migration[6.1]
  def change
    add_column :projectfeatures, :name, :string
  end
end
