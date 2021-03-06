class CreateInquiries < ActiveRecord::Migration[5.2]
  def change
    create_table :inquiries do |t|
      t.integer :customer_id
      t.string :name
      t.string :email
      t.text :message
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
