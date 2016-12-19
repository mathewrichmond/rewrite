class CreateInsertions < ActiveRecord::Migration
  def change
    create_table :insertions do |t|
      t.integer :review_id
      t.integer :position
      t.string :content

      t.timestamps null: false
    end
  end
end
