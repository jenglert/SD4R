module UsersHelper
  
  class MoveInDate
    attr_accessor :month
    attr_accessor :day
    attr_accessor :year
  end
  
  def convert_date(obj)
    return Date.new(obj['(1i)'].to_i,obj['(2i)'].to_i,obj['(3i)'].to_i)
  end

  def move_in_dates
    move_in_dates = []
    next_move_in_day = Time.now.beginning_of_month + 14.days
    if Time.now.day < 10
      move_in_dates << convert_date_to_formatted_array(next_move_in_day)
    end
    
    for i in 1..8 do
      next_move_in_day = next_move_in_day.next_month.beginning_of_month
      move_in_dates << convert_date_to_formatted_array(next_move_in_day)
      next_move_in_day = next_move_in_day + 14.days
      move_in_dates << convert_date_to_formatted_array(next_move_in_day)
    end
    
    move_in_dates
  end
    
private 
  def convert_date_to_formatted_array(date)
    [date.strftime('%b %d, %Y'), "#{date.strftime('%B')} #{date.day}th, #{date.year}"]
  end

end
