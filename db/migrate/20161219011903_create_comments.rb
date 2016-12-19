class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :review_id
      t.integer :position
      t.integer :offset
      t.string :content

      t.timestamps null: false
    end
  end
end
