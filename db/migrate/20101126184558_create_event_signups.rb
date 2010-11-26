class CreateEventSignups < ActiveRecord::Migration
  def self.up
    create_table :event_signups do |t|
      t.integer :user_id
      t.integer :event_id
      t.string :note

      t.timestamps
    end
  end

  def self.down
    drop_table :event_signups
  end
end
