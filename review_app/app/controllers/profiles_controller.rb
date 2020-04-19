class ProfilesController < ApplicationController
    def new
        @user=User.new
        @profile=Profile.new
        @review=Review.new
    end
    
    def create
        @profile=Profile.new(profile_params)
        if @profile.save
            redirect_to profile_path, notice:
            "Welcome #{@profile.fullname}, to your VerdictLabs profile."
        else
            redirect_to root_path, alert:
            "You need to be logged in to view your VerdictLabs profile."
        end
    end

    def edit 
        @profile=Profile.find(params[:id])
    end

    def update
        @profile=Profile.find(params[:id])
        if @profile.update(profile_params)
            redirect_to @profile
        else
            render 'edit'
        end
    end

    def show 
        @profile=Profile.find(params[:id])
        @user=User.find(params[:id])
    end

    private
    def profile_params
        params.require(:profile).permit(:user_id, :fullname, :dob, :address, :citytown, :country, :profilephoto)
    end

end
