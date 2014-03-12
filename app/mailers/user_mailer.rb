class UserMailer < ActionMailer::Base
  default from: ENV["APP_DEFAULT_EMAIL"]
  def welcome_email(user)
  	mail(:to => user.email, :subject => "Welcome To TrendNG")
  	headers['X-MC-GoogleAnalytics'] = ENV['DOMAIN']
  	headers['X-MC-Tags'] = "welcome"
  end
end
