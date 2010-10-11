class CreateUserNotes < ActiveRecord::Migration
  def self.up
    create_table :user_notes do |t|
      
      t.string :note
      
      t.timestamps
    end
  end

  def self.down
    drop_table :user_notes
  end
end
