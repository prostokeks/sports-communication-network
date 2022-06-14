class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @sport_results = SportTable.paginate(page:params[:page], per_page: 10)
  end

  def feed
    SportTable.where("user_id=?", id)
  end
end
