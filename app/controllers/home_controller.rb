class HomeController < ApplicationController
    
    def index
       @users = User.all
    end
    
    def new
         @users = User.new
    end
  
   def create
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = "You signed up successfully"
      flash[:color]= "valid"
    else
      flash[:notice] = "Form is invalid"
      flash[:color]= "invalid"
    end
    render "new"
  end
  
#load_and_authorize_resource
  
end