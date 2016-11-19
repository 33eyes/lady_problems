class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :user_id
      t.string :email
      t.string :password
      t.date :date_of_birth

      t.timestamps null: false
    end
  end
end
