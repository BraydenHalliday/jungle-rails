class User < ActiveRecord::Base
  has_secure_password
#validates :password, confirmation: true
#validates :firstname, length: { maximum: 30 }
#validates :lastname, length: { maximum: 30 }
#validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }

#validate do |email|
  #email.Error
#end
#def Error
 # errors.add(:base, 'Error exsisting user')
#end
#if User.find :email params[:email]

end
