class TodosController < ApplicationController

  def index
    all_todos = Todo.all
    display_todos = all_todos.map do |todo|
      "#{todo.id}) #{todo.body} --- #{todo.completed}"
    end
    render json: Todo.all
  end

end
