class TodosController < ApplicationController

  def index
    render json: Todo.all
  end

  def new
    render json: Todo.new
  end

  def show
    if Todo.exists?(params[:id])
      render json: Todo.find(params[:id])
    else
      render json: { message: "todo not found" }, status: 404
  end

  def create
    render json: Todo.create(body: params.fetch(:body))
  end

  def destroy
    if Todo.exists?(params[:id])
      Todo.destroy(params[:id])
      render json: { message: "destroyed" }, status: 200
    else
      render json: { message: "todo not found" }, status: 404
    end
  end

  def update
    if Todo.exists?(params[:id])
      Todo.update(params[:id], completed: true)
      render json: Todo.find(params[:id])
    else
      render json: { message: "todo not found" }, status: 404
    end
  end


end
