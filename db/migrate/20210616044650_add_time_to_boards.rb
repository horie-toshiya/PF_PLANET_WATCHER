class AddTimeToBoards < ActiveRecord::Migration[5.2]
  def change
    add_column :boards, :time, :string
  end
end
