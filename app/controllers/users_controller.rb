class UsersController < ApplicationController
before_action :authenticate_user! 

  def index
	@users = User.paginate(page: params[:page], per_page: 2)


  end

  def show
  	@user = User.find(params[:id])
  	@posts = @user.posts.paginate(page: params[:page])
  end
end
