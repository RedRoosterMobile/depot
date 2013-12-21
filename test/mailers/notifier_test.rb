require 'test_helper'

class NotifierTest < ActionMailer::TestCase
  test "error" do
  	myerror = ActiveRecord::RecordNotFound.new
    mail = Notifier.error(myerror)
    assert_equal "Depot App Error Incident", mail.subject
    assert_equal ["to@example.com"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hello Admin,\r\n\r\nThis is just to inform you", mail.body.encoded
  end

end
