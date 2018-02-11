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

	/allows you to edit one of the items in the checklist/
	def edit
	end

	/the action that happens in the edit view/
	def update
		if @item.update(item_params)
			redirect_to item_path(@item)
		else
			render 'edit'
		end
	end

	/Allows you to delete a checklist item/
	def destroy
		@item.destroy
		redirect_to root_path
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