class Util
  
  def Util.development?
    ENV['RAILS_ENV'] == 'development'
  end
  
  def Util.test?
    ENV['RAILS_ENV'] == 'test'
  end
  
  def Util.production?
    ENV['RAILS_ENV'] == 'production'
  end
  
end