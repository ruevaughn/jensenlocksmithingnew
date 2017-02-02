ActionMailer::Base.smtp_settings = {
    :address => "smtp.gmail.com",
    :port => 587,
    :domain => "gmail.com",
    :user_name => secrets[:GMAIL_USERNAME],
    :password => secrets[:GMAIL_PASSWORD], 
    :authentication => "plain",
    :enable_starttls_auto => true
}
