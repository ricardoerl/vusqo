class RequestMailer < ApplicationMailer
  default from: 'no-reply@vusqo.com'
  layout 'mailer'

  def new(request)
    @request = request
    mail(to: 'ricardo.ramirez@gmail.com', subject: 'Nuevo registro en Vusqo')
  end
end
