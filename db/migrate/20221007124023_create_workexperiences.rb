class CreateWorkexperiences < ActiveRecord::Migration[6.1]
  def change
    create_table :workexperiences do |t|
      t.string :clientname
      t.string :interval
      t.string :role
      t.string :feature, array: true, default: []
      t.timestamps
    end
  end
end
