class UpdatePageContent < ActiveRecord::Migration[5.0]
  def change
    add_column :page_contents, :title, :string
  end
end
