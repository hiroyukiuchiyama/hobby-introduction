class UsersController < ApplicationController
    before_action :ensure_correct_user, only: [:edit,:update,:destroy]
    
    def show
        @user = User.find(params[:id])
        @hobbys = @user.hobbys
        @hobby = Hobby.new
    end
    
    def index
        @user = User.all
        @hobby = Hobby.new
    end
    
    def edit
        @user = User.find(params[:id])
    end
    
    def updae
        @user = User.find(params[:id])
        if @user.update(user_params)
         redirect_to user_path(@user), notice: "You have updated user successfully."
        else
         render 'edit'
        end
    end
    
    
    private
    
    def user_params
        params.require(:user).permit(:name, :introduction, :profil_image)
    end
    
    def ensure_correct_user
        @user = User.find(params[:id])
        unless @user == current_user
            redirect_to user _path(current_user)
        end
    end
    
        
end
