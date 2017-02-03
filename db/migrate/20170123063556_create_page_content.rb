class CreatePageContent < ActiveRecord::Migration[5.0]
  def change
     create_table :page_contents do |t|
      t.string :page
      t.string :content_name
      t.text :body

      t.timestamps
    end
  end
end
