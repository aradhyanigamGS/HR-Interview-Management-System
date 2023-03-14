class RegistrationController < ApplicationController

  def new
    @register = Register.new 
  end

  def create
    @register = Register.new(register_params)

    if @register.save
      session[:register_id] = @register.id
      redirect_to root_path  ,notice: "Registered Successfully"
    else 
      redirect_to :root, notice: "Repeat the process"
    end

 
  end

  

  private 
  
    def register_params
      params.require(:register).permit(:name , :email ,:contact , :password, :password_confirmation)
    end

end
