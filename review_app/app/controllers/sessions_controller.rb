class SessionsController < ApplicationController
    def index
    end

    def new
    end

    def create
        user=User.find_by_username(params[ :username])
        if user && user.authenticate(params[ :password])
        session[ :username]=user.id
        redirect_to root_path, notice:
        "Welcome #{user.username}, you are now logged in"
        
        else
        render 'new', alert:
        "Invalid username and/or password"
        end
    end

    def destroy
        session[:username] = nil
        redirect_to root_path, notice:
        "You have successfully logged out"
    end
end
