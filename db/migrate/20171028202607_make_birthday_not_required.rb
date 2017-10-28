class MakeBirthdayNotRequired < ActiveRecord::Migration
  def change
    change_column :coincident_twos, :birthday, :date, :null => true
  end
end
