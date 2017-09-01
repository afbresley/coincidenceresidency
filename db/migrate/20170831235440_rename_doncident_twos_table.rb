class RenameDoncidentTwosTable < ActiveRecord::Migration
  def change
    rename_table :concident_twos, :coincident_twos
  end
end
