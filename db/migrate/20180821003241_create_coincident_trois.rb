class CreateCoincidentTrois < ActiveRecord::Migration
  def change
    create_table :coincident_trois do |t|
      # personal info
      t.string :name,  null: false, default: ""
      t.string :email, null: false, default: ""
      t.text :address, null: false, default: ""
      t.date :birthday
      t.string :website

      # app proper
      t.text :tell_us, null: false, default: ""
      t.text :why_ams_you, null: false, default: ""

      t.string :link1, null: false, default: ""
      t.string :link2
      t.string :link3

      t.string :link_to_prompt, null: false, default: ""

      # for us
      t.string :how_did_you_hear

      t.timestamps null: false
    end
  end
end
