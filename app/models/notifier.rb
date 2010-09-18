class Notifier < ActionMailer::Base
  
  layout 'email'
  
  def speed_dating_notice(email)
    email_recipients email
    from 'webmaster@vroommates.com'
    subject 'There'
    
    @email
  end

end
