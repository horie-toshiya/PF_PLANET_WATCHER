class AddNameToBoards < ActiveRecord::Migration[5.2]
  def change
    add_column :boards, :name, :string
  end
end
