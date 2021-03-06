class HomeController < ApplicationController
  skip_before_action :require_login, only: [:index, :new_team, :team_registered]


  def index
    @users = User.all
  end

  def new_team
    @team = Team.new
  end

  def team_registered
    @code = SecureRandom.hex(3)
    @email = team_create_params
    TeamCodeMailer.team_code(@email, @code).deliver
  end

  def team_create_params
  params.permit(:email)
end
end
