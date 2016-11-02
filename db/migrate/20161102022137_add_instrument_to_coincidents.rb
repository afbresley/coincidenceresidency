class AddInstrumentToCoincidents < ActiveRecord::Migration
  def change
    add_column :coincidents, :instruments, :string
  end
end
