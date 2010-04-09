class UsersController < ApplicationController
def new  
    @user = User.new  
end  
  
def create  
  @user = User.new(params[:user])  
  if @user.save  
    flash[:notice] = "Registration successful."  
    redirect_to tickets_url  
  else  
    render :action => 'new'  
  end  
end  

end
