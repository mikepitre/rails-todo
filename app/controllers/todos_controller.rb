class TodosController < ApplicationController

  def index
    render json: Todo.all
  end

  def new
    render json: Todo.new
  end

  def show
    render json: Todo.find(params[:id])
  end

end
