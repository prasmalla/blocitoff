class ItemsController < ApplicationController

  def create
    @item = current_user.items.new(params.require(:item).permit(:name))

    if @item.save
      flash[:notice] = "Item added."
    else
      flash[:error] = "Error adding item."
    end
    redirect_to current_user
  end
end
