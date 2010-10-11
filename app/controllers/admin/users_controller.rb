class Admin::UsersController < AdminController
  
  def index
    @users = User.find(:all, :order => 'created_at desc')
  end
  
  def show
    @user = User.find(params[:id])
    @user_note = UserNote.new
  end
  
  def show_popup
    @user = User.find(params[:id])
    
    render :layout => 'blank'
  end
  
  def post_note
    @user_note = UserNote.new(params[:user_note])
    
    if @user_note.save
      redirect_to "/admin/users/show/#{@user_note.user.id}"
    else
      @user = User.find(@user_note.user)
      render :controller => 'admin/users', :action => 'show'
    end
  end
  
end