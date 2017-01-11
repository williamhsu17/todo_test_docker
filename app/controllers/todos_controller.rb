class TodosController < ApplicationController
  def index
    @todos_active = Todo.where(:is_done => false)
    @todos_done = Todo.where(:is_done => true)
  end
end
