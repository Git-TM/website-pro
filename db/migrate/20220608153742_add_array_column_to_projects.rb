class AddArrayColumnToProjects < ActiveRecord::Migration[6.1]
  def change
    add_column :projects, :features, :text, array: true, default: []
    add_column :projects, :codetags, :text, array: true, default: []
  end
end
