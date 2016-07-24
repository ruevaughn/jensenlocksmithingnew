class CreateBlogPosts < ActiveRecord::Migration[5.0]
  def change
    create_table :blog_posts do |t|
      t.string :header
      t.text :body

      t.timestamps
    end
  end
end
