class CreateJyotirlings < ActiveRecord::Migration[7.1]
  def change
    create_table :jyotirlings do |t|
      t.string :title
      t.text :location, array: true, default: []

      t.timestamps
    end
  end
end
