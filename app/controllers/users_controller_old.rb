class UsersController < ApplicationController
    def login
        @user = User.find_by(params[:email])
    end
    
    def logout
    end
    
    def show
        @user = User.find(params[:email])
    end
    
    # POST /users
    # POST /users.json
    def create
        @user = User.new(user_params)
        if @user.save
            render status: :created
        else
            render json: {message: 'failed'}, status: 500
        end    
    end
    
    # PATCH/PUT /users/1
    # PATCH/PUT /users/1.json
    def update
        @user = User.update(user_params)
    end
    
    def destroy
        @user.destroy
        head :no_content
    end  
    
    private
    
    def user_params
        params.require(:user).permit(:email,:password, :date_of_birth)
    end    
end
