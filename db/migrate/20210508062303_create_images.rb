class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.string :url_name
      t.string :human_type
      t.boolean :popular
      t.boolean :new_arrival
      t.boolean :saved_to_list

      t.timestamps
    end
  end
end
