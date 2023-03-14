class SigninController < ApplicationController

  def new
  end

  def create
    @register = Register.find_by(email: params[:email])

    if @register.present? && @register.authenticate(params[:password])
      session[:register_id] = @register.id
      redirect_to root_path, notice: "Logged in"
    else
      flash[:alert] = "Invalid Id or password"
      render plain: "You have to create an Account" 
      # render 'registration/new.html.erb'
    end
    
  end
 
end
