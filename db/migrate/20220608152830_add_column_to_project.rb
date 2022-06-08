class AddColumnToProject < ActiveRecord::Migration[6.1]
  def change
    rename_column :projects, :projecttype, :type
    add_column :projects, :mokup, :string
    add_column :projects, :logoclient, :string
    add_column :projects, :client, :string
    remove_column :projects, :generaltags
    remove_column :projects, :results
    remove_column :projects, :features
    remove_column :projects, :codetags
  end
end
