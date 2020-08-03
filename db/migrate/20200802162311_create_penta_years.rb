class CreatePentaYears < ActiveRecord::Migration
  def change
    create_table :penta_years do |t|

      t.string :name,  null: false, default: ""
      t.string :email, null: false, default: ""
      t.string :about_me, null: false, default: ""

      t.string :attendance_capacity, null: false, default: ""
      t.string :website, null:false, default: ""
      t.string :location, null: false, default: ""
      t.text :why, null: false, default: ""

      t.string :proposal_link, null: false, default: ""

      t.timestamps null: false
    end
  end
end
