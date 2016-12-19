class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.integer :user_id
      t.string :name
      t.integer :revieion
      t.integer :revieion

      t.timestamps null: false
    end
  end
end
