# Sidekiq mailer demo

Demo application for [sidekiq_mailer](http://siliconsalad.github.com/sidekiq_mailer) gem.

# Configure it

Open ``config/initializers/mail.rb`` and replace the placeholders with your settings.

# Enjoy

First, start the rails application with ``rails s``, then, you can start sidekiq workers ``sidekiq -q mailer``.
Finally, you can open your browser to test it ([demo app](http://127.0.0.1:3000/emailings))
