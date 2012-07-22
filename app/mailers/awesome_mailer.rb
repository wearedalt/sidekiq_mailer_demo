class AwesomeMailer < ActionMailer::Base

  include Sidekiq::Mailer

  def invite(user_name, email)
    headers = {
      from:        headers_from_settings(:from),
      reply_to:    headers_from_settings(:reply_to),
      return_path: headers_from_settings(:return_path),
      subject:     'Asynchronous mail... from Sidekiq!',
      to:          "#{user_name} <#{email}>"
    }

    mail(headers)
  end

  def headers_from_settings(key)
    "mail_#{key}".upcase.constantize
  end
end
