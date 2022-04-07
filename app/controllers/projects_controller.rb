class ProjectsController < ApplicationController
	skip_before_action :verify_authenticity_token

  # GET /projects
  def index
    @projects = Project.includes(:todos).all

    render json: @projects, :include => { :todos => { :except => [:created_at, :updated_at, :project_id] }}, :except => [:created_at, :updated_at]
  end

  # PATCH /projects/:id/todos/:id
  def update
    updated_is_completed = params[:is_completed]

    if updated_is_completed == nil
      message = "No parameter 'is_completed'"
      render json: { error: message }, status: 404
    else
      project_id = params[:project_id].to_i
      todo_id = params[:todo_id].to_i
      
      @todo = Project
        .includes(:todos)
        .find(project_id).todos
        .find { |todo| todo.id == todo_id}
      
      @todo.update(is_completed: updated_is_completed)
      
      if @todo.save
        render json: @todo
      else
        render error: { error: 'Unable to update todo' }, status: 400
      end 
    end

  end

end
