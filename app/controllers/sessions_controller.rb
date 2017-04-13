class SessionsController < ApplicationController

  def new
    if sessions[:name]
      @user = sessions[:name]
      redirect_to destroy_path
    end
  end

  def create
    if !params[:name]
      redirect_to new_path
    elsif params[:name] == ""
      redirect_to new_path
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    session.delete :name
    redirect_to new_path
  end


end
