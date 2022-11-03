# Preview all emails at http://localhost:3000/rails/mailers/welcome
class WelcomePreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/welcome/send_greeting_notification
  def send_greeting_notification
    WelcomeMailer.send_greeting_notification
  end

end
