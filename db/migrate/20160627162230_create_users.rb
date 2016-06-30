class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
        t.string :name, null: false
        t.string :location, null: false
        t.string :photo_url
        t.string :ethnicities, index: true, null: false, array: true, default: []
        t.timestamps null: false
    end
  end
end
