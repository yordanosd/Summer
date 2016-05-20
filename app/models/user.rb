class User < ActiveRecord::Base
  has_many :weights

  validates :username, presence: true
  validates :email, presence: true, uniqueness: true

  has_secure_password

  def self.log_in(email, password)
    user = User.find_by(email: email.downcase)
    user && user.authenticate(password)
  end


  def current_user?(current_user)
    return false if current_user == nil
    current_user.id == self.id ? true : false
  end

  def profile_pic
    picture = self.photo_url
    if picture == nil || picture == ""
      "http://images.cdn4.stockunlimited.net/clipart/add-user-icon_1598354.jpg"
    else
      picture
    end
  end

  def ranking
    
  end

end
