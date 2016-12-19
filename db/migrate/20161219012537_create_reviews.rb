class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :document_id
      t.integer :base_revieion

      t.timestamps null: false
    end
  end
end
