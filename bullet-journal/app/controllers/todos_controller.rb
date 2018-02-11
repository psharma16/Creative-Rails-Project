class TodosController < ApplicationController
	/Loads all the todos in the database into todos/
	def index
		@todos = Todo.all
	end

	/Creates a new todo in the database/
	def new
		@todo = Todo.new
	end

	/create a new todo/
	def create
		@todo = Todo.create(todo_params)
		redirect_to todos_path
	end

	private
	def todo_params
		params.require(:todo).permit(:item)
	end

	def edit
		@todo = Todo.find(params[:id])
		redirect_to edit_path
	end

	def destroy
		@todo = Todo.find(params[:id])
		@todo.destroy
	end

	def update
		@todo = Todo.find(params[:id]) 
		@todo.update
	end
end
