class AddAbstractToManuscripts < ActiveRecord::Migration[5.2]
  def change
    add_column :manuscripts, :abstract, :text
    add_column :manuscripts, :publication_date, :date
  end
end
