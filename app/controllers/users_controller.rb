class UsersController < ApplicationController

  skip_before_action :require_login, only: [:new, :create]
  before_action :correct_user,   only: [:index, :update, :show, :edit, :update]


  def new
    @user = User.new
  end

  def create
    @user = User.new(user_create_params[:user])
    if @user.save
      redirect_to user_path(@user)
    else
      render '/sign_up'
    end
  end

  def index
    @user = User.all
  end

  def update
    user = User.find(params[:id])
    user.update(user_create_params[:user])
    redirect_to user_path(user)
  end

  def edit
    @user = User.find(params[:id])
    render :new
  end

  def show
    @user = User.find(params[:id])
  end

  def correct_user
    @user = User.find(current_user.id)
    redirect_to(root_path) unless @user == current_user
  end

  private

  def user_create_params
    params.permit(user: [:first_name, :username, :email, :password, :password_confirmation,:photo_url, :account_manager])
  end
end
