class ChangeMoveInMonthType < ActiveRecord::Migration
  def self.up
    change_column :users, :desired_move_in_month, :timestamp
  end

  def self.down
  end
end
