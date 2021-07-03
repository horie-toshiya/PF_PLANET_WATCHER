class AddScoreToMainContents < ActiveRecord::Migration[5.2]
  def change
    add_column :main_contents, :score, :decimal, precision: 5, scale: 3
  end
end
