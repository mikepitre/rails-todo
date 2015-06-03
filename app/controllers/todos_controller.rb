class TodosController < ApplicationController

  def index
    render json: Todo.all
  end

  def new
    render json: Todo.new
  end

end
