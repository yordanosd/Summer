class SessionsController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]

  def new
  end

  def create
    @user = User.log_in(params[:session][:email], params[:session][:password])
    if @user
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    session.delete :user_id
    redirect_to root_path
  end


end
