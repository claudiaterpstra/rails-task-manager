class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    params_task = params.require(:task).permit(:title, :description)
    @task = Task.new(params_task)
    @task.save
  end

  def edit
    @task = Task.find(params[:id])
    redirect_to tasks_path
  end

  def update
    @task = Task.find(params[:id])
    params_task = params.require(:task).permit(:title, :description)
    @task.update(params_task)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

end
