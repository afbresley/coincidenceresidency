class CreateCoincidents < ActiveRecord::Migration
  def change
    create_table :coincidents do |t|

      t.string :name,  null: false, default: ""
      t.string :email, null: false, default: ""

      t.text :address, null: false, default: ""
      t.text :project_description, null: false, default: ""

      t.string :link1, null: false, default: ""
      t.string :link2
      t.string :link3

      t.string :website
      t.string :cv_resume_link
      t.date :birthday, null: false

      t.text :why_apply

      t.timestamps null: false
    end
  end
end
