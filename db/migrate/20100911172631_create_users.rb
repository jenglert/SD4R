class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :current_address
      t.integer :current_zip_code
      t.string :current_state
      t.string :current_city
      t.integer :desired_location_id
      t.string :phone_number
      t.string :email
      t.char :gender
      t.integer :age
      t.integer :race_id
      t.integer :religion_id
      t.integer :desired_rent_min
      t.integer :desired_rent_max
      t.string :available_days
      t.integer :available_hours
      t.integer :approved_by
      t.timestamp :approval_date
      t.char :desired_gender
      t.integer :desired_age_min
      t.integer :desired_age_max
      t.boolean :has_a_room
      t.integer :desired_move_in_month
      t.boolean :desired_smoking_preference
      t.integer :desired_number_of_roommates

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
