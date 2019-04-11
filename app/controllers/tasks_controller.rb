TASKS = Task.all

class TasksController < ApplicationController
  def index    
    @tasks = TASKS
  end

  def show
    task_id = params[:id]
    @task = Task.find_by(id: task_id)
    if @task.nil?
      redirect_to task_path
    end
  end

  def new
    @task = Task.new(name: "Default Name")
  end

  def create
    task = Task.new(
      name: params["task"]["name"],
      description: params["task"]["description"],
      completed_at: params["task"]["completed_at"],
      )

    is_successful = task.save

    if is_successful
      redirect_to task_path(task.id)
    else
      head :not_found
    end
  end
end
