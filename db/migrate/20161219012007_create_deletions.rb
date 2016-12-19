class CreateDeletions < ActiveRecord::Migration
  def change
    create_table :deletions do |t|
      t.integer :review_id
      t.integer :position
      t.integer :offset

      t.timestamps null: false
    end
  end
end
