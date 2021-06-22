class CreateBoardComments < ActiveRecord::Migration[5.2]
  def change
    create_table :board_comments do |t|
      t.string :comment_content
      t.references :customer, foreign_key: true
      t.references :board, foreign_key: true
      t.integer :customer_id
      t.integer :board_id

      t.timestamps
    end
  end
end
