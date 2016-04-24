class ListsController < ApplicationController
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

  def create
  end

  def update
  end

  def destroy
  end

end
