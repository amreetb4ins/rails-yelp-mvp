class CreateReviews < ActiveRecord::Migration[7.2]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.text :content
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
