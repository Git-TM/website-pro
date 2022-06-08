class AddTypeToProject < ActiveRecord::Migration[6.1]
  def change
    rename_column :projects, :type, :projecttype
  end
end
