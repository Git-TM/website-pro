class CleanProjectColumn < ActiveRecord::Migration[6.1]
  def change
    remove_column :projects, :mokup
    remove_column :projects, :logoclient
    remove_column :projects, :client
  end
end
