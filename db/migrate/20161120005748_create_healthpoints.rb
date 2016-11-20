class CreateHealthpoints < ActiveRecord::Migration
  def change
    create_table :healthpoints do |t|
      t.integer :healthpoint1
      t.integer :healthpoint2
      t.integer :healthpoint3
      t.integer :healthpoint4
      t.integer :healthpoint5
      t.text :diary_entry
      t.timestamps
    end
  end
end
