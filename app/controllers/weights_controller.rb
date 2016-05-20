class WeightsController < ApplicationController
  def new
    @weight = Weight.new
    @user = User.find(params[:user_id])
  end

  def create
    @weight = Weight.new(create_weight_params[:weight])
    if @weight.save
      redirect_to user_path(params[:user_id])
    else
      render :new
    end
  end

  private
  def create_weight_params
    params.permit(weight: [:weight, :record_date, :user_id])
  end
end
