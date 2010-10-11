class AddFieldsToLandingPages < ActiveRecord::Migration
  def self.up
    add_column :landing_pages, :content, :text
    add_column :landing_pages, :url_keyword, :string
  end

  def self.down
  end
end
