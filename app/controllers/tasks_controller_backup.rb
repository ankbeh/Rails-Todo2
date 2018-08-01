class TasksController < ApplicationController
	def new
		@task = Task.new
		render :show_form
	end
	def index
		@tasks = Task.all
	end
	def create
		@task = Task.create(task_params)
		@tasks = Task.all #giving create action ablity to show tasks as we r using 
		#javascript to load tasks dynamicall on submit
		#redirect_to root_path(Disabled becuse we r using javascript
		# o submit and render the data instead of rails route)
		render :hide_form
	end
	def edit
		@task = Task.find(params[:id])
		render :show_form
	end
	def update
		@task = Task.find(params[:id])
		@task.update_attributes(task_params)
		@tasks = Task.all #again we use this to dynamically render tasks on index withouth page refres.
		render :hide_form
	end
	def destroy
		@task = Task.find(params[:id])
		@task.destroy
		@tasks = Task.all #again we use this to dynamically render tasks on index withouth page refres.
	end
	private
	def task_params
		params.require(:task).permit(:title, :note, :completed)
	end
end
