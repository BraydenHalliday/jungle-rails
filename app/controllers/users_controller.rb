class UsersController < ApplicationController

  #Ex:- add_index("admin_users", "username")
  #Ex:- add_index("admin_users", "username")
  def new
    #@user = User.new
   # puts 'heklo', @user.inspect
  end

  def show
  end

  def edit
  end
 
  def create 
    
  # @user = User.new params [:firstname][:lastname][:email][:password]
    #User.save! params [:firstname][:lastname][:email][:password]
    #if @user.save
  # puts params[:firstname]
    #cookies[:email] = params[:email]
    
  # redirect_to root_path
  # else 
  #   flash.now[:alert] = 'exsisting user!'
  # end

    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to '/'
    else
      redirect_to '/user'
    end
  end

  def user_params
    params.require(:user).permit(:firstname, :lastname, :email, :password, :password_confirmation)
  end
end
