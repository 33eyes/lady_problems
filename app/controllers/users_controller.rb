class UsersController < ApplicationController
    def login
        @user = User.find_by(email: params[:email])
    end
    def logout
    end
    def show
    end
    def create
        @user = User.new(user_params)
        if @user.save
            render status: :created
        else
            render json: {message
        end    
    end
    def update
        
    end
    def destroy
    end  
end
