class User < ActiveRecord::Base
  validates_presence_of :first_name, :last_name, :birth_date, :gender
  validates_uniqueness_of :email
end
