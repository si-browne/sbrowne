class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.string :fullname
      t.date :dob
      t.string :address
      t.string :citytown
      t.string :country
      t.attachment :profilephoto

      t.timestamps
    end
  end
end
