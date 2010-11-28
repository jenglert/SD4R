class Time
  
  def simple
    strftime "%b %d, %Y"
  end
  
  def simple_with_time
    strftime "%b %d, %Y @ %l%p"
  end
  
end

class Date
  
  def simple
    strftime "%b %d, %Y"
  end
  
end