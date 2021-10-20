class HobbyController < ApplicationController
    before_action :ensure_correct_user, only:[:edit, :update,:destroy]
    
     def show
         @hobby = Hobbby.find(params[:id])
         @user = @hobby.user
         @hobbys = Hobby.new
     end
     
     def index 
         @hobby = Hobby.new
         @hobbys = hobby.all
     end
     
     def create
        @hobby = hobby.new(book_params)
        @hobby.user_id = current_user.id
      if @hobby.save
        redirect_to book_path(@hobby), notice: "You have created hobby successfully."
      else
        @hobbys = hobby.all
        render 'index'
      end
     end
     
     def edit
        @hobby = hobby.find(params[:id])
     end
     
     def update
      @hobby = hobby.find(params[:id])
      if @hobby.update(hobby_params)
          redirect_to hobby_path(@book), notice: "You have updated hobby successfully."
      else
          render 'edit'
      end
     end
     
     def destroy
         @hobby = Hobby.find(params[:id])
         @hobby.destroy
         redirect_to hobbys_path 
     end
    
    
    private
    
    def hobby_params
        params.require(:hobby).permit(:title, :body)
    end

  def ensure_correct_user
    @hobby = hobby.find(params[:id])
    @user = @hobby.user
    unless @user == current_user
      redirect_to hobby_path
    end
  end

end
    
    
    

end
