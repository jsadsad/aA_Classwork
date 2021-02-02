class Api::TodosController < ApplicationController
 #controllers under the api folder to indicate we are sending back api/json info
    def index
        @todos = Todo.all
        render json: @todos
    end

    def show
        render json: Todo.find(params[:id])
    end

    def create
        @todo = Todo.new(todo_params)
        if @todo.save
            render json: @todo
        else
            render json: @todo.errors.full_messages, status: 422
        end
    end

    def update
        @todo = Todo.find_by(id: params[:id])
        if @todo.update(todo_params)
            render json: @todo
        else
            render json: @todo.errors.full_messages, status: 422
        end
    end

    def destroy
        @todo = Todo.find_by(id: params[:id])
        @todo.destroy
        render json: @todo
    end

    private
    def todo_params
        params.require(:todo).permit(:title, :body)
    end
end
