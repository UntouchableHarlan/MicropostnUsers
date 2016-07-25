class WelcomeController < ApplicationController
  def index
    @micropost = current_user.microposts.build if current_user
    @microposts = Microposts.all

  end
end
