class CreateMainComments < ActiveRecord::Migration[5.2]
  def change
    create_table :main_comments do |t|
      t.string :comment_content
      t.integer :customer_id
      t.integer :main_content_id

      t.timestamps
    end
  end
end
