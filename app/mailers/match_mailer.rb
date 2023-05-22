require '/home/angel/Documents/quniela/quiniela/app/models/user'
class MatchMailer < ApplicationMailer
  default from: 'correo@gmail.com'

  def published_email(user, result)
    puts '-----------------------------------'
    @match = match_label
    @user = user.email
    puts @user
    mail(to: @user, subject: 'Wathing the result of match')
  end
end
