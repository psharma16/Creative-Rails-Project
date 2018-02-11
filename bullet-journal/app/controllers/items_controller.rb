class ItemsController < ApplicationController
	/index action/
	def index
		@items = Item.all.order("created_at DESC")
	end

	def new
		@item = Item.new
	end

	/used for creating a new item/
	def create
		@item = Item.new(item_params)
		if @item.save
			redirect_to root_path
		else
			render 'new'
		end
	end

	/defining parameters for each item/
	private
	def item_params
		params.require(:item).permit(:title, :description, :status)
	end

end
