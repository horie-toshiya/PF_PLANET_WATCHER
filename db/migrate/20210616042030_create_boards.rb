class CreateBoards < ActiveRecord::Migration[5.2]
  def change
    create_table :boards do |t|
      t.integer :customer_id
      t.string :title
      t.text :sentence
      t.integer :comment_id
      t.text :board_comment

      t.timestamps
    end
  end
end
