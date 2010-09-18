class ChangeUserDesiredGenders < ActiveRecord::Migration
  def self.up
    remove_column :users, :desired_gender
    add_column :users, :desires_male_roommate, :boolean
    add_column :users, :desires_female_roommate, :boolean
  end

  def self.down
  end
end
