class TaskManagersController < ApplicationController

 before_action :set_task, only: [ :show, :edit, :update, :destroy ]

  def index
    @tasks = TaskManager.all
  end

  def show
  end

  def new
    @task = TaskManager.new
  end

  def create
    @task = TaskManager.new(task_params)
    @task.save
    redirect_to task_manager_path(@task)
  end

  def edit
  end

  def update
    @task.update(task_params)
    redirect_to task_manager_path(@task)
  end

  def destroy
    task.destroy
    redirect_to task_manager_path
  end

  private

  def task_params
    params.require(:task_manager).permit(:name, :description)
  end

  def set_task
    @task = TaskManager.find(params[:id])
  end
end
