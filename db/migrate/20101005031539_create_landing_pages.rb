class CreateLandingPages < ActiveRecord::Migration
  def self.up
    create_table :landing_pages do |t|
      t.string :name
      t.char :style
      t.timestamps
    end
  end

  def self.down
    drop_table :landing_pages
  end
end
