class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
        t.string :name, null: false
        t.string :photo_url, null: false
        t.string :ingredients, index: true, null: false, array: true, default: []
        t.string :tags, array: true, default: []
        t.string :category, index: true, null: false, array: true, default: []
        t.integer :price, null: false
        t.string :portion, null: false
        t.integer :quantity, null: false
        t.references :user, index: true, null: false
        t.text :description, null: false, length: {minimum: 40}
        t.timestamps null: false
    end
  end
end
