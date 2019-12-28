class UserMailer < ApplicationMailer
  def welcome_email
    mail to: "reyber", subject: "Welcome"
  end
end