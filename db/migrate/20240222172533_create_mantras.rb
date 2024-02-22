class CreateMantras < ActiveRecord::Migration[7.1]
  def change
    create_table :mantras do |t|
      t.string :title
      t.text :mantra, array: true, default: []

      t.timestamps
    end
  end
end
