class HomeController < ApplicationController
    
    def index
       @users = User.all
    end
    
    def new
         @user = User.new
    end
  
   def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Employer a ete cree"
      flash[:color]= "valid"
    else
      flash[:notice] = "Form is invalid"
      flash[:color]= "invalid"
    end
   # render "new"
   redirect_to('/home/index')
  end
  private 
  def user_params
      params.require(:user).permit(:email, :password)
  end
  
end