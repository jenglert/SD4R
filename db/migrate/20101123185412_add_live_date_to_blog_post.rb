class AddLiveDateToBlogPost < ActiveRecord::Migration
  def self.up
    add_column :blog_posts, :live_date, :date
  end

  def self.down
  end
end
