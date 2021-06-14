class CreateMainContents < ActiveRecord::Migration[5.2]
  def change
    create_table :main_contents do |t|
      t.integer :admin_id
      t.string :facility
      t.string :time
      t.text :appeal
      t.string :fee
      t.string :address
      t.string :access
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
