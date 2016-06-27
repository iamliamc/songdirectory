class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  
  helper_method :current_user 

  def current_user 
    @current_user ||= User.find(session[:user_id]) if session[:user_id] 
  end
  
  def require_editor 
    redirect_to '/' unless current_user.editor? 
  end
  
  def require_admin
    redirect_to '/' unless current_user.admin?
  end
  
  def require_user
    if current_user
    else
      redirect_to login_path, :flash => { :error => "You must be logged in to access this section!" }
    end
  end
      
  
  protect_from_forgery with: :exception
end
