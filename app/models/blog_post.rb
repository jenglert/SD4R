class BlogPost < ActiveRecord::Base
  
  def words_in_content
    self.content.split(" ").size
  end
end
