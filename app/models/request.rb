class Request < ApplicationRecord
  after_save :send_email

  def send_email
    RequestMailer.new_email(self).deliver
  end
end
