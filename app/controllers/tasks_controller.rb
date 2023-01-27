class TasksController < ApplicationController
  def index
    @tasks = Task.order(:position)
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @count = Task.count
    @task = Task.new(position: @count+1)
  end

  def create
    @task = Task.new(params.require(:task).permit(:name, :completed, :position, :description))
    if @task.save
      redirect_to tasks_path
    else
      render('new')
    end
  end

  def edit
  end

  def update
  end

  def delete
    puts 'helllllllo'
  end

  def destroy
    # task = Task.find(params[:id])
    # task.destroy
    # redirect_to tasks_path
    puts 'helllllllo'
  end
end
