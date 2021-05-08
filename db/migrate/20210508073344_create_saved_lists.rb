class CreateSavedLists < ActiveRecord::Migration[5.2]
  def change
    create_table :saved_lists do |t|
      t.string :url_name

      t.timestamps
    end
  end
end
