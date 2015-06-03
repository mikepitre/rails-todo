class TodosController < ApplicationController

  def index
    render json: Todo.all
  end

  def new
    render json: Todo.new
  end

  def show
    begin
      render json: Todo.find(params[:id])

    rescue ActiveRecord::RecordNotFound => error
      render json: { error: error.message }, status: 404

    rescue StandardError => error
      render json: { error: error.message }, status: 422
    end
  end

  def create
    render json: Todo.create(body: params.fetch(:body))
  end

  def destroy
    if Todo.exists?(params[:id])
      Todo.destroy(params[:id])
      render json: { message: "destroyed" }, status: 200
    else
      render json: { message: "todo not found"}, status: 404
    end
  end


end
