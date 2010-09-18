class IdName
	attr_accessor :id, :name
	
	def initialize(id, name)
	  self.id = id
	  self.name = name
  end
  
  def first
    id
  end
  
  def last
    name
  end
	
end