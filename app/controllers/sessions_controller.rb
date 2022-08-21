# # Import sessions_helper.rb
# $LOAD_PATH << '.'
# require "../helpers/sessions_helper"

class SessionsController < ApplicationController
    # include SessionsHelper
    def new
    end

    def create
        user = User.find_by(email: params[:session][:email])
        if user.present? && user.authenticate(params[:session][:password])
            log_in(user)
            params[:session][:remember_me] ? remember(user) : forget(user)
            redirect_to root_path
        else
            flash[:alert] = "Invalid email or password"
            render :new
        end


        # user = User.find_by(email: params[:session][:email])
        # if user.present? && user.authenticate(params[:session][:password])
        #     # session[:user_id] = user.id 
        #     log_in user
        #     params[:session][:remember_me] ? remember(user) : forget(user)
        #     redirect_to root_path, notice: "Logged in successfully"
        # else
        #     flash[:alert] = "Invalid email or password"
        #     render :new
        # end
    end

    def destroy
        # session[:user_id] = nil
        log_out if logged_in?
        redirect_to root_path
    end
end