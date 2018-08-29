class UsersController < ApplicationController
  def new
    @user=User.new
  end

  def index
    @users=User.all
  end

  def create
    @user=User.new(user_params)
    if @user.save
      flash[:success]="Login Successful"
    redirect_to books_path
    else 
      flash[:error]="Login failed, please try again"
      redirect_to users_path
    end
  end 

  def user_params 
    params.require(:user).permit(:email, :password)
  end
end
