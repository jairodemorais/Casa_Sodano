class UserMailer < ActionMailer::Base
  default from: "jairodemorais@gmail.com"

  def product_reserves(user, cart)
    @cart = cart
    mail( :to => user.email,
          :subject => "Reserva de productos, Casa Sodano",
          :template_path => 'user_mailer',
          :template_name => 'product_reserves')
  end
end
