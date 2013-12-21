class Notifier < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.error.subject
  #
  def error(error_message)
    @error = error_message
    mail to: "to@example.com", subject: 'Depot App Error Incident'
  end
end
