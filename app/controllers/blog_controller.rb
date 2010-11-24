class BlogController < ApplicationController
  
  def index
    @blogs = BlogPost.find(:all, :order => 'created_at desc', 
        :conditions => ["live_date < ? or live_date is null", Time.now])
  end
  
  def show
    @blog = BlogPost.find(params[:id])
  end
end
