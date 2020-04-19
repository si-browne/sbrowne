class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :product_id
      t.string :author
      t.integer :rating
      t.text :reviewcontent
      t.date :date

      t.timestamps
    end
  end
end
