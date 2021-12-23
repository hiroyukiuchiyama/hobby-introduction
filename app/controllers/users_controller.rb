class UsersController < ApplicationController
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
