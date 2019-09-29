class CreateWebsiteImages < ActiveRecord::Migration[5.0]
  def change
    create_table :website_images do |t|
      t.string :name
      t.string :alt_text
      t.text :description
      t.boolean :default
      t.integer :page_id
      t.string :image_html_id # Thinking of just looking up which image to use by this, will change it if I get a better solution 

      t.timestamps
    end
  end
end
