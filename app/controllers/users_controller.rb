class UsersController < ApplicationController
  before_action :user_set, only: [:edit, :update, :destroy]
  
  def new
    @user = User.new 
  end
  
  def create
    @user = User.new(user_params) 
    if @user.save
      flash[:notice] = " Welcome to Alpha Blog #{@user.username}, You've successfully signed up!"
      redirect_to articles_path
    else
      render 'new'
    end
  end
  
  def edit
  end

  def update
   if @user.update(user_params)
    flash[:notice] = "Your Account Information was Successfully Updated"
    redirect_to articles_path 
   else
    render 'edit'
   end
  end

  def destroy
    @user.destroy 
    redirect_to @user 
  end


  private 
  
  
  def user_set
    @user = User.find(params[:id])
  end
  
  def user_params
    params.require(:user).permit(:username, :email, :password)
  end



end  