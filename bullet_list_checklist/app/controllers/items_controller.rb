class ItemsController < ApplicationController
	before_action :find_item, only: [:show, :edit, :update, :destroy]

	/index action/
	def index
		@items = Item.all.order("created_at DESC")
	end

	/shows the item in question/
	def show
		
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

	private
	def find_item
		@item = Item.find(params[:id])
	end

end