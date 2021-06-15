class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.integer :admin_id
      t.string :festival
      t.string :place
      t.string :period
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
