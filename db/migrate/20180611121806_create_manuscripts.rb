class CreateManuscripts < ActiveRecord::Migration[5.2]
  def change
    create_table :manuscripts do |t|
      t.string :title
      t.string :content_url
      t.integer :discipline_id

      t.timestamps
    end
  end
end
