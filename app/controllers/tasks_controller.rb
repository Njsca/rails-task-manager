class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id].to_i)
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(restaurant_params)
    @task.save
    redirect_to task_path(@task)
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:title, :details)
  end
end
