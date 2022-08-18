class UsersController < ApplicationController
    def show
        @user = User.find(params[:id])
    end
    
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params) # Not the final implementation!
        if @user.save
            # Handle a successful save.
            # log_in @user
            session[:user_id] = @user.id
            # redirect_to @user
            redirect_to root_path, notice: "Successfully created account"
        else
            render :new
        end
    end

    private
    def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
    