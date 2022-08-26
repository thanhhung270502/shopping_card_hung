class UsersController < ApplicationController
    before_action :logged_in_user, only: [:edit, :update]
    before_action :correct_user, only: [:edit, :update]
    before_action :admin_user, only: [:index, :destroy]

    def show
        @user = User.find_by(id: params[:id])
        @microposts = @user.microposts.paginate(page: params[:page])
    end
    
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params) # Not the final implementation!
        if @user.save
            # Handle a successful save.
            @user.send_activation_email
            flash[:info] = "Please check your email to activate your account."
            # log_in @user
            redirect_to root_path
            # session[:user_id] = @user.id
            # redirect_to @user
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
        @@current_path = request.url
    end

    def destroy
        User.find(params[:id]).destroy
        redirect_to @@current_path
    end

    private
        def user_params
            params.require(:user).permit(:name, :email, :password, :password_confirmation)
        end

        # Confirms a logged-in user.


        # Confirms the correct user.
        def correct_user
            @user = User.find_by(id: params[:id])
            redirect_to(root_url) unless current_user?(@user)
        end

        def admin_user
            redirect_to(root_url) unless current_user.admin?
        end
end
    