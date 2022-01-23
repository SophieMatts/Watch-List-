class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    puts params[:id]
    @list = List.find(params[:id])
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list)
    else
      render 'new'
    end
  end

  def save
    redirect_to list_path(@index)
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    if @task.update(taks_params)
      redirect_to task_path(@show)
    else
      render 'edit'
    end
  end

  def destroy
    @task.destroy
    redirect_to task_path
  end

  private
  def list_params
    params.require(:list).permit(:name)
  end
end
