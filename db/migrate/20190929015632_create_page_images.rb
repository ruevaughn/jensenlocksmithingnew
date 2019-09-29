class CreatePageImages < ActiveRecord::Migration[5.0]
  def change
    create_table :page_images do |t|
      t.string :page
      t.string :name
      t.string :alt_text
      t.string :image_location 
      t.text :description
      t.boolean :default

      t.timestamps
    end
  end
end
