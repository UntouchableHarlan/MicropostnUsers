class MicropostsController < ApplicationController
  before_action :require_user, only: [:create, :destroy]

  def index
    @micropost = current_user.microposts.build if current_user
    @microposts = Micropost.all
  end

  def new
  end

  def create
    @micropost = current_user.microposts.build(micropost_params)
    if @micropost.save
      flash[:success] = "Micropost created!"
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  def destroy

  end

  private

  def micropost_params
    params.require(:micropost).permit(:content)
  end
end
