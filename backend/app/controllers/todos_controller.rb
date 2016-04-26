class TodosController < ApplicationController
  before_action :find_todo, only: [:show, :update, :destroy]

  #getAllToDos
  def index
    @todos = Todo.all
  end

  def show
    @todo = Todo.find(params[:id])
  end


  #quickToDoAdd

  #completeToDoAdd
  def create
    @todo = Todo.new(content: params[:content], dateCreated: params[:dateCreated], timeNeeded: params[:timeNeeded], calendarApp: params[:calendarApp], dateDue: params[:dateDue], bestBy: params[:bestBy], importance: params[:importance], category: params[:category])

    if @todo.save
      render 'show', formats: [:json], handlers: [:jbuilder], status: 201
    else
      render json: {error: "Todo could not be created."}, status: 422
    end
  end

  #editToDo
  def update
    if @todo.update_attributes(content: params[:content], dateCreated: params[:dateCreated], timeNeeded: params[:timeNeeded], calendarApp: params[:calendarApp], dateDue: params[:dateDue], bestBy: params[:bestBy], importance: params[:importance], category: params[:category])
      render 'show', formats: [:json], handlers: [:jbuilder], status: 200
    else
      render json: {error: "Todo could not be updated"}, status: 422
    end
  end

  #deleteToDo
  def destroy
    if @todo.destroy
      render json:{}, status: 200
    else
      render json: { error: "Todo could not be deleted"}, status: 422
    end
  end

  #find
  def find_todo
    @todo = Todo.find(params[:id])
  end
end
