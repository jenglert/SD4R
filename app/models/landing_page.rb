class LandingPage < ActiveRecord::Base
  validates_presence_of :name, :content, :style, :url_keyword
  validates_uniqueness_of :url_keyword
  
  class Layout
    attr_accessor :id
    attr_accessor :description
    attr_accessor :name
    
    def initialize(id, name, description) 
      self.id = id
      self.name = name
      self.description = description
    end
  end
  
  EMAIL_CAPTURE_TO_THANK_YOU = Layout.new(1, "Email capture to thank you", 
      "The page will feature an email capture and will forward into a thank you page.")
  
  def LandingPage.layouts
    [EMAIL_CAPTURE_TO_THANK_YOU]
  end
  
end
