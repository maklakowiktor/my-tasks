class TodosController < ApplicationController
	skip_before_action :verify_authenticity_token

    # POST /todos
	def create
		text = params[:text]
		project_id = params[:project_id].to_i
		
		new_project_title = params[:title]

		@project = Project.find_by_id(project_id)

		if @project == nil
			new_project = Project.new(:title => new_project_title)
			new_project.save()
			project_id = new_project["id"]
        end

		@todo = Todo.new(text: text, is_completed: false, project_id: project_id)
		
		if @todo.save
			render json: @todo
		else
			render error: { error: 'Unable to create todo.' }, status: 400
		end 
	end

end
