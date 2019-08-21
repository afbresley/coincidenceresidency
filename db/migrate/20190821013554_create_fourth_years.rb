class CreateFourthYears < ActiveRecord::Migration
  def change
    create_table :fourth_years do |t|
      t.string :name,  null: false, default: ""
      t.string :email, null: false, default: ""

      t.string :proposal_link, null: false, default: ""
      t.text :about_me, default: ""

      t.timestamps null: false
    end
  end
end
