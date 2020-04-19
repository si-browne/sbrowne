class UsersController < ApplicationController
    def new
        @user=User.new
        @profile=Profile.new
        @review=Review.new
    end

    def create
        @user=User.new(user_params)
        if @user.save
            #redirect to profiler here?
            redirect_to new_profile_path, notice:
            "welcome #{@user.username}! to VerdictLabs, please customise your profile."
        else
            render 'new'
        end
    end

    def show 
        @user=User.find(params[:id])
    end

    private
    def user_params
        params.require(:user).permit(:username, :email, :password, :password_confirmation, :userphoto)
    end

end
