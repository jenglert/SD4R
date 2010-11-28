class MakeEventDateADateTime < ActiveRecord::Migration
  def self.up
    change_column :events, :event_date, :datetime
  end

  def self.down
  end
end
