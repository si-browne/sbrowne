class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.integer :user_id
      t.string :brand
      t.float :avgcost
      t.string :category
      t.date :releasedate
      t.text :description
      t.attachment :productphoto

      t.timestamps
    end
  end
end
