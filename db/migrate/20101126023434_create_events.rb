class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.integer :neighborhood_id
      t.time :event_date
      t.integer :host_id
      t.integer :status
      t.string :title

      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
