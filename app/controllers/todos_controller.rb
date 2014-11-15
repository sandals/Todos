class TodosController < ApplicationController
	before_filter :authenticate

	def index
		@todos = Todo.all
	end

	def new
		@todo = Todo.new
	end

	def create
		@todo = Todo.new(todo_params)
		
		if @todo.save
			redirect_to todos_path
		else
			redirect_to todos_path, error: "could not save todo"
		end
	end

	private

	def todo_params
		params.require(:todo).permit(:title)
	end
end
