class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.string :url_name
      t.string :title
      t.string :caption
      t.string :price
      t.string :human_type
      t.integer :popular
      t.integer :arrival
      t.boolean :saved_to_list

      t.timestamps
    end
  end
end
