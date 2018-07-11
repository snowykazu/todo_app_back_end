class TodoController < ApplicationController
    def index
    end
    def show
        @todo_description = "Eat k"
        @todo_pomodoro_estimate = "0"
        todo_id = params[:id]
        if todo_id == '1'
            @todo_description = "I'm changed" 
            @todo_pomodoro_estimate = '100'
        elsif todo_id == '5'
            @todo_description = 'hello' 
            @todo_pomodoro_estimate = '8'
        end
    end
end