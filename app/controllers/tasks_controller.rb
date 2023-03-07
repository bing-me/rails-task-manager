class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.create!(task_params)
    redirect_to task_path(@task)
  end

  def show
    @task = Task.find(params[:id])
    @tasks = Task.all
  end

  private

  def task_params
    params.require(:task).permit(:title, :details)
  end
end
