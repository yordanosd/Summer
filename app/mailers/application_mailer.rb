class ApplicationMailer < ActionMailer::Base
  default from: "yordanosd@gmail.com"
  # layout 'mailer'

  def team_code(user, code)
     @user = user
     @code = code
     mail(to:  @user[:email], subject: 'Team Code')
  end

end
