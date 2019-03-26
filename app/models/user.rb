class User < ActiveRecord::Base
  has_secure_password
  has_many :reviews
  validates :password, presence: true
  validates :password, confirmation: true
  validates :password, length: { maximum: 30 }

  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :email, presence: true
  
 # validates :password_confirmation, :if => :password_confirmation == :password
  #validates :password, confirmation: true

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
