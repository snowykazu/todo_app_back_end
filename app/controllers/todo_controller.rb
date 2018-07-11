class TodoController < ApplicationController
    def index
    end
    def show
        @todo_description = "Eat k"
        @todo_pomodoro_estimate = "0"
    end
end