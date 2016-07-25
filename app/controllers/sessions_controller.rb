class SessionsController < ApplicationController
  def new

  end

  def create
    @user = User.find_by_email(params[:session][:email])
    if @user && @user.authenticate(params[:session][:email])
      session[:user_id] = @user.id
      redirect_to root_path
    else
      flash[:notice] = "Error..."
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
