class CreateCitations < ActiveRecord::Migration[5.2]
  def change
    create_table :citations do |t|
      t.integer "citer_id", :null => false
      t.integer "citee_id", :null => false
      t.timestamps
    end
  end
end
