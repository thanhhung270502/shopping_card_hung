class UsersController < ApplicationController
    before_action :logged_in_user, only: [:index, :edit, :update]
    before_action :correct_user, only: [:edit, :update]

    def show
        @user = User.find_by(id: params[:id])
    end
    
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params) # Not the final implementation!
        if @user.save
            # Handle a successful save.
            log_in @user
            # session[:user_id] = @user.id
            # redirect_to @user
            redirect_to root_path
        else
            render :new
        end
    end

    def edit
        @user = User.find_by(id: params[:id])
    end        

    def update
        @user = User.find_by(id: params[:id])
        if @user.update(user_params)
            # Handle a successful update.
            redirect_to @user
        else
            render 'edit'
        end
    end

    def index 
        # @users = User.all
        @users = User.paginate(page: params[:page])
    end

    private
        def user_params
            params.require(:user).permit(:name, :email, :password, :password_confirmation)
        end

        # Confirms a logged-in user.
        def logged_in_user
            unless logged_in?
                store_location
                redirect_to log_in_path
            end
        end

        # Confirms the correct user.
        def correct_user
            @user = User.find_by(id: params[:id])
            redirect_to(root_url) unless current_user?(@user)
        end
end
    