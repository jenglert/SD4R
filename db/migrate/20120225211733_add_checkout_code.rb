class AddCheckoutCode < ActiveRecord::Migration
  def self.up
    add_column :events, :checkout_code, :text
  end

  def self.down
  end
end
