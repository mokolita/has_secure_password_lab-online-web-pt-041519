class UsersController < ApplicationController
    
    def new 
        @user= User.new
    end 

    def create 
        user = User.create(user_params)
        session[:user_id] = user.id
      
           redirect_to new_user_path
        
    end 

    private 

    def user_params
        params.require(:user).permit(:name, :password, :username)
    end 
end
