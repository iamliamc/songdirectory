class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  
  helper_method :current_user 

  def current_user 
    @current_user ||= User.find(session[:user_id]) if session[:user_id] 
  end
  
  #def require_user 
    #redirect_to '/login' unless current_user
    #Not sure if this will actually pop with current flow control
    #flash[:error] = "You must be logged in to access this section"
  #end
  
  def require_user
    if current_user
    else
      #flash[:error] = "You must be logged in to access this section"
      redirect_to login_path, :flash => { :error => "You must be logged in to access this section" }
    end
  end
      
  
  protect_from_forgery with: :exception
end
