class CreateConcidentTwos < ActiveRecord::Migration
  def change
    create_table :concident_twos do |t|
      # personal info
      t.string :name,  null: false, default: ""
      t.string :email, null: false, default: ""
      t.text :address, null: false, default: ""
      t.date :birthday, null: false
      t.string :website

      # for us
      t.string :how_did_you_hear

      # app proper
      t.text :tell_us, null: false, default: ""
      t.string :link_to_prompt, null: false, default: ""
      t.string :link1, null: false, default: ""
      t.string :link2
      t.string :link3


      t.timestamps null: false
    end
  end
end
