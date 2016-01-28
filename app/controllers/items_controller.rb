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

  def destroy
    @item = current_user.items.find(params[:id])

    if @item.delete
      flash.now[:notice] = "Bravo! task completed."
    else
      flash.now[:error] = "Oops! try again."
    end

    respond_to do |format|
      format.html
      format.js
    end
  end
end
