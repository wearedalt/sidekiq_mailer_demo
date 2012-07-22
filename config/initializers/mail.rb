ActionMailer::Base.smtp_settings = {
  address:              'smtp.gmail.com',
  port:                 587,
  domain:               'gmail.com',
  user_name:            '<USER>',
  password:             '<PASSWORD>',
  authentication:       'plain',
  enable_starttls_auto: true
}

ActionMailer::Base.default_url_options[:host] = 'localhost:3000'
ActionMailer::Base.perform_deliveries         = true
ActionMailer::Base.raise_delivery_errors      = true

MAIL_FROM        = '<FROM_MAIL>'
MAIL_REPLY_TO    = '<REPLY_TO_MAIL>'
MAIL_RETURN_PATH = '<RETURN_PATH>'
