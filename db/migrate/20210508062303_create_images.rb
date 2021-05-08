class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.string :url_name
      t.string :human_type
      t.integer :popular
      t.boolean :new_arrival

      t.timestamps
    end
  end
end
