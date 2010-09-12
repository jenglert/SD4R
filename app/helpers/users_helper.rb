module UsersHelper
  
  
def convert_date(obj)
    return Date.new(obj['(1i)'].to_i,obj['(2i)'].to_i,obj['(3i)'].to_i)
end

end
