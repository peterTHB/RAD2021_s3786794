class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.string :url_name
      t.string :gender
      t.integer :popular
      t.boolean :new_arrival

      t.timestamps
    end
  end
end
