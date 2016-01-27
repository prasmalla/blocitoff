class UsersController < ApplicationController

  def signup
    render template: "devise/registrations/new"
  end

  def show
    @user = User.find(params[:id])
  end
end