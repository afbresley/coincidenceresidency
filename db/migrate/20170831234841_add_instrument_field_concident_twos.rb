class AddInstrumentFieldConcidentTwos < ActiveRecord::Migration
  def change
    add_column :concident_twos, :instruments, :string
  end
end
