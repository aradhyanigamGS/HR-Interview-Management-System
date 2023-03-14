class MainController < ApplicationController
  def index
    
    if session[:register_id]
      @register = Register.find_by(id: session[:register_id])
    end

  end
end
