class CreateVratKathayes < ActiveRecord::Migration[7.1]
  def change
    create_table :vrat_kathayes do |t|
      t.string :title
      t.text :story, array: true, default: []

      t.timestamps
    end
  end
end
