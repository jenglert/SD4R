class LandingPage < ActiveRecord::Base
  validates_presence_of :name, :content, :style
end
