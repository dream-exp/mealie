class CreateMenus < ActiveRecord::Migration
  # default_value_for :page_view, :purchase_count => 0

  def change
    create_table :menus do |t|
      t.string :name
      t.integer :price
      t.string :category
      t.string :imageurl
      t.integer :cal
      t.string :allergy
      t.integer :quantity
      t.text :description
      t.boolean :mon
      t.boolean :tue
      t.boolean :wed
      t.boolean :thu
      t.boolean :fri
      t.boolean :sat
      t.boolean :sun
      t.integer :page_view, default: 0
      t.integer :purchase_count, default: 0


      t.timestamps null: false
    end
  end
end
