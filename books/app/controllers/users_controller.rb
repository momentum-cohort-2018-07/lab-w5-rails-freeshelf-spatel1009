class UsersController < ApplicationController
  def index
    @user = User.all
  end
  
  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end 

  def create
    @user=User.new(user_params)
    if @user.save
      flash[:success]="Create Successful"
    redirect_to books_path
    else
      flash[:error]=@user.errors
    redirect_to users_new_path
    end
  end

  private

  def user_params 
    params.require(:user).permit(:user_name, :password)
  end
end
