class UsersController < ApplicationController

  def signup
    render template: "devise/registrations/new"
  end

  def show
    @user = current_user
    @item = current_user.items.new
    @items = current_user.items
  end
end