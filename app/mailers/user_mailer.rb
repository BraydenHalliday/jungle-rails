
class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'
 
  def confirmation_email(user, order)
    @user = user
    @url  = 'http://example.com/login'
    @order = order
    #potential issues
    puts "#2 user_mailer.rb !!!!!!!!!!!!!#{@user.email}"
    mail(to: @user.email, subject: "Jungle order number: #{order.id}")
  end
end
