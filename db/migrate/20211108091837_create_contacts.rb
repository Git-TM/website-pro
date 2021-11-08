class CreateContacts < ActiveRecord::Migration[6.1]
  def change
    create_table :contacts do |t|
      t.string :email
      t.string :firstname
      t.string :name
      t.text :message
      t.string :company

      t.timestamps
    end
  end
end
