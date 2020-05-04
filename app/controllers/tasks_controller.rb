class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = tasks.build
  end

  def create
    @task = task.build(task_params)

    if @task.save
      redirect_to tasks_path
    else
      render 'new'
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:task_type, :params)
  end
end
