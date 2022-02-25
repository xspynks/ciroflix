class ControlUsersController < ApplicationController
  def index
    @users = User.all
    authorize @users  
end

  before_action :authenticate_user!
end
