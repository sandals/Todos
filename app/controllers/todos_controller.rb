class TodosController < ApplicationController
	before_filter :authenticate

	def index
		@todos = Todo.where(email: current_user)
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
		params.require(:todo).permit(:title).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user).merge(email: current_user)
	end
end
