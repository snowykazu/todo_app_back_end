class TodoController < ApplicationController
    def index
    end
    
        def show
            @todo_description = "Eat k"
            @todo_pomodoro_estimate = "0"
            @todo =Todo.find_by_id(params[:id])
            todo_id = params[:id]
            if todo_id == '1'
                @todo_description = "I'm changed" 
                @todo_pomodoro_estimate = '100'
                elsif todo_id == '2'
                @todo_description = 'hello' 
                @todo_pomodoro_estimate = '8'
                
            end
        
        end
        def new
        
        end
       
        def create
            t = Todo.new
            t.description = params['discription']
            t.pomodoro_estimate = params['pomodoro_estimate']
            t.save
            redirect_to "/todo/show/#{t.id}"
        end
    
        def edit
            @todo = Todo.find_by_id(params[:id])
        end
            
end