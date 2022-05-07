class TaskController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def new
  end

  # Create a task
  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to task_index_path
  end

  # Show a task (READ)
  def show
  end

  def edit
  end

  # update task
  def update
    @task.update(task_params)
    redirect_to tasks_path
  end

  # delete task
  def destroy
    @task.destroy
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end
