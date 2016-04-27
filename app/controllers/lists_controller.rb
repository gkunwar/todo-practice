class ListsController < ApplicationController

  # before_action :authenticate_user!, except: [:show, :list]
  def index
    @lists = List.all
  end

  def show
  end

  def new
    @list = List.new
  end

  def edit
  end

  def complete
    @list = List.find(params[:id])
    @list.update_attributes(completed: true)
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to lists_path
    else
      render 'new'
    end
  end

  def update
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy
    redirect_to lists_path
  end

  private
  def list_params
    params.require(:list).permit(:title)
  end

end
