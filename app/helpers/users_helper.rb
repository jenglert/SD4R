module UsersHelper
  
  class MoveInDate
    attr_accessor :month
    attr_accessor :day
    attr_accessor :year
  end
  
  def convert_date(obj)
    return Date.new(obj['(1i)'].to_i,obj['(2i)'].to_i,obj['(3i)'].to_i)
  end

  def move_in_date
    
  end

end
