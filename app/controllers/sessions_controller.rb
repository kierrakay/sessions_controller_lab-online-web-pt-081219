class SessionsController < ApplicationController
  def new
  end

  # def create  
  #    session[:name] = params[:name] 
  #       if session[:name].nil? || session[:name].empty? 

  #     redirect_to '/login' 
  #    else     
  #      redirect_to '/' 
  #        end 
  #      end




  def create
    if params[:name].nil? || params[:name].empty?
  
      redirect_to(controller: 'sessions', action: 'new')
      # redirect_to '/login' for actual route/url 
      # redirect_to :login for view page

    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    if !session[:name].nil?
      session.delete :name
    end
    redirect_to '/'
  end
end

