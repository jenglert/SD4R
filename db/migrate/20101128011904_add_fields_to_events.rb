class AddFieldsToEvents < ActiveRecord::Migration
  def self.up
    add_column :events, :location, :text
    add_column :events, :host_name, :string
    add_column :events, :host_email, :string
    add_column :events, :host_phone, :string
    add_column :events, :notes, :text
  end

  def self.down
  end
end
