class AddInfosToProjects < ActiveRecord::Migration[6.1]
  def change
    add_column :projects, :category, :string
    add_column :projects, :type, :string
    add_column :projects, :imgurl, :string
    add_column :projects, :logourl, :string
    add_column :projects, :results, :string
    add_column :projects, :features, :string
  end
end
