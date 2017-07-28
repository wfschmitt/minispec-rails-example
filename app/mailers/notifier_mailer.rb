class NotifierMailer < ApplicationMailer

  def announcement(message)
    @message = message
    mail(
      :to      => 'everyone@theworld.com',
      :from    => 'admin@theworld.com',
      :subject => 'very important announcement',
    )
  end

end
