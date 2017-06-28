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
            flash[:notice] = "Employe a ete cree"
            flash[:color]= "valid"
        
        
        else
            flash[:notice] = "Form is invalid"
            flash[:color]= "invalid"
        end
        
        # render "new"
        redirect_to('/home/index')
    end


    def show
        @user = User.find(params[:id])
    end

    def edit
        @user = User.find(params[:id])
    end
    
    private 
    def user_params
        params.require(:user).permit(:email, :password, :role)
    end
  
  
  # DELETE /organisme_referants/1
  # DELETE /organisme_referants/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to user_url, notice: 'Organisme referant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

end

