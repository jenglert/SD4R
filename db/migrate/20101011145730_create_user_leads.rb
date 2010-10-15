class CreateUserLeads < ActiveRecord::Migration
  def self.up
    create_table :user_leads do |t|
      
      t.integer :converted_user_id
      t.string :email
      
      t.timestamps
    end
  end

  def self.down
    drop_table :user_leads
  end
end
