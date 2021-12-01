class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :projectname
      t.string :context
      t.string :generaltags
      t.string :codetags
      t.string :githublink
      t.string :weblink

      t.timestamps
    end
  end
end
