class RequestMailer < ApplicationMailer
  default from: 'no-reply@vusqo.com'
  layout 'mailer'

  def new_email(request)
    @request = request
    mail(to: 'ricardo.ramirezlara@gmail.com', subject: 'Nuevo registro en Vusqo')
  end
end
