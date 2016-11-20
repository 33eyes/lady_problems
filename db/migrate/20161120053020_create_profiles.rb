class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.string :username
      t.date :date_of_birth
      
      t.timestamps
    end
  end
end
