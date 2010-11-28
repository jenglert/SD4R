class Admin::BlogPostsController < AdminController

  def index
    @blog_posts = BlogPost.all
  end

  def show
    @blog_post = BlogPost.find(params[:id])
  end

  def new
    @blog_post = BlogPost.new(:live_date => 1.day.from_now)
  end

  def edit
    @blog_post = BlogPost.find(params[:id])
  end

  def create
    @blog_post = BlogPost.new(params[:blog_post])

    if @blog_post.save
      flash[:notice] = 'BlogPost was successfully created.'
      redirect_to :action => 'index'
    else
      render :action => "new"
    end

  end
  
  def update
    @blog_post = BlogPost.find(params[:id])

    if @blog_post.update_attributes(params[:blog_post])
      flash[:notice] = 'BlogPost was successfully updated.'
      redirect_to :action => 'index' 
    else
      render :action => "edit" 
    end
  end

  def destroy
    @blog_post = BlogPost.find(params[:id])
    @blog_post.destroy

    respond_to do |format|
      format.html { redirect_to(blog_posts_url) }
      format.xml  { head :ok }
    end
  end
end
