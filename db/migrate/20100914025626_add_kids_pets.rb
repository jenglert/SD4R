class AddKidsPets < ActiveRecord::Migration
  def self.up
    add_column :users, :has_kids, :boolean
    add_column :users, :roomy_kids, :boolean
    add_column :users, :has_pets, :boolean
    add_column :users, :roomy_pets, :boolean
  end

  def self.down
  end
end
