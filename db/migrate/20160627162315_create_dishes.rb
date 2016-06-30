class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
        t.string :name, null: false
        t.string :photo_url, null: false
        t.string :ingredients, index: true, null: false, array: true, default: []
        t.string :tags, array: true, default: []
        t.timestamps null: false
    end
  end
end
