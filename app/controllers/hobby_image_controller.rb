class HobbyImageController < ApplicationController
  def new
     @hobby_image = HobbyIntroduction.new
  end

  def create
    @hobby_image = HobbyImage.new(post_image_params)
    @hobby_image.user_id = current_user.id
    @hobby_image.save
    redirect_to hobby_image_path
  end
  
  def index
    @hobby_image = HobbyImage.all
  end

  def show
    @hobby_image = HobbyImage.find(params[:id])
  end

  def
   destroy
    @hobby_image = HobbyImage.find(params[:id])
    @hobby_image.destroy
    redirect_to hobby_image_path
  end
  private

  def hooby_image_params
    params.require(:hobby_image).permit(:image, :caption)
  end
end
