class SessionsController < ApplicationController

  def new
  end

  def create
    # byebug
    session[:name] = params[:name]

    if session[:name] && !session[:name].empty?
      redirect_to '/'
    else
      redirect_to '/login'
    end
  end

  def destroy
    session.delete :name

    redirect_to '/'
  end
end
