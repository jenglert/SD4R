class AddAnotherFieldToLandingPages < ActiveRecord::Migration
  def self.up
    add_column :landing_pages, :style, :string, :limit => 1
  end

  def self.down
  end
end
