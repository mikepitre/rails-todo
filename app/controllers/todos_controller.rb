class TodosController < ApplicationController

  def index
    all_todos = Todo.all
    respond_to do |format|
      format.html do
        render 'todos.html.erb', locals: { todos: all_todos }
      end
      format.json do
        render json: all_todos
      end
    end
  end

  def new
    render json: Todo.new
  end

  def show
    if Todo.exists?(params[:id])
      todo = Todo.find(params[:id])
      respond_to do |format|
        format.html do
          render 'show.html.erb', locals: { show_todo: todo }
        end
        format.json do
          render json: todo
        end
      end
    end
  end

  def create
    render json: Todo.create(body: params.fetch(:body))
  end

  def destroy
    if Todo.exists?(params[:id])
     destroyed = Todo.destroy(params[:id])
      respond_to do |format|
        format.html do
          render 'destroy.html.erb', locals: { destroyed_todo: destroyed }
        end
        format.json do
          render json: destroyed
        end
      end
    end
  end

  def update
    if Todo.exists?(params[:id])
      updated_todo = Todo.update(params[:id], completed: params[:completed])
      respond_to do |format|
        format.html do
          render 'update.html.erb', locals: { completed_todo: updated_todo }
        end
        format.json do
          render json: updated_todo
        end
      end
    else
      render json: { message: "todo not found" }, status: 404
    end
  end


end
