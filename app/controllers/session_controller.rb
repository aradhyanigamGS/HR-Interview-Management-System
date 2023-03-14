class SessionController < ApplicationController
  def destroy
    session[:register_id] = nil
    redirect_to root_path, notice: "Logged out" 
  end
end 