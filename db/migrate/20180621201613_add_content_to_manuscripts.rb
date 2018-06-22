class AddContentToManuscripts < ActiveRecord::Migration[5.2]
  def change
    add_column :manuscripts, :content, :string
  end
end
