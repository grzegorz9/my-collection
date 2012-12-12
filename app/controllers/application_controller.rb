class ApplicationController < ActionController::Base
  protected
  
  def login_required
    return true if User.find_by_id(session[:user_id])
    access_denied
    return false
  end
  
  def access_denied
    flash[:error] = "You need to log in before you can do that."
    redirect_to login_path
  end
  
  def permission_required
    user = User.find_by_id(session[:user_id])
    permission = user.account_type
    if permission == 'full-access'
      return true
    else
      permission_denied
      return false
    end
  end
  
  def permission_denied
    flash[:error] = "You don't have permission to access that page."
    redirect_to items_path
  end
end
