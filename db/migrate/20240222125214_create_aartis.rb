class CreateAartis < ActiveRecord::Migration[7.1]
  def change
    create_table :aartis do |t|
      t.string :title
      t.text :lyrics, array: true, default: []

      t.timestamps
    end
  end
end
