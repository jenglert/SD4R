class BlogController < ApplicationController
  
  def index
    @blogs = BlogPost.find(:all, :order => 'created_at desc', 
        :conditions => ["live_date < ? or live_date is null", Time.now])
  end
  
  def show
    @blog = BlogPost.find(params[:id])
  end
  
  def rss
    @blogs = BlogPost.find(:all, :order => 'created_at desc', 
        :conditions => ["live_date < ? or live_date is null", Time.now])
        
    render :layout => false
    response.headers["Content-Type"] = "application/xml; charset=utf-8"
  end
end
