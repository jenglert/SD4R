class Neighborhood < ActiveRecord::Base
  belongs_to :city
  
  class NeighborhoodGroup
    attr_accessor :grouping
    attr_accessor :members
    
    def initialize(opts = {}) 
      self.grouping = opts[:grouping] || ""
      self.members = opts[:members] || []
    end
  end
  
  def self.neighborhood_groups(city_id)
    groups = {}
    
    groups['Choose a Neighborhood'] = NeighborhoodGroup.new(:grouping => 'Choose a Neighborhood', :members => [ IdName.new(0, 'Choose a Neighborhood') ])
    
    Neighborhood.find_all_by_city_id(city_id).each do |n| 
      groups[n.grouping] ||= NeighborhoodGroup.new
      
      groups[n.grouping].grouping = n.grouping
      groups[n.grouping].members << n      
      
    end
    
    groups.values.sort{ |a, b| b.id <=> a.id }
  end
  
  
end
