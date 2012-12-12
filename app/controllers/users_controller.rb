class UsersController < ApplicationController  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to login_path, notice: "Signed up!"
    else
      render "new"
    end    
  end
  
  def login
    
  end
  
  def process_login
    user = User.authenticate(params[:email], params[:password])
    if user
      session[:user_id] = user.id
      redirect_to  :my_account, notice: 'Logged in successfully!'
    else
      flash.now.alert = "Invalid email or password"
      render "login"
    end
  end
  
  def logout
    session[:user_id] = nil
    redirect_to login_path, notice: "Logged out!"
  end
  
  def my_account
    if session[:user_id] != nil
      @sessName = User.find(session[:user_id]).email
    else
      @sessName = "Guest"
    end
  end
end
