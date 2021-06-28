class AddImageIdToMainContents < ActiveRecord::Migration[5.2]
  def change
    add_column :main_contents, :image_id, :string, null: true
  end
end
