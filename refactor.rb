def rearrangement
  return true if !changes['prio']  
  previous_ordered_ids = self.class.all.order(prio: :asc, updated_at: :desc).pluck(:id)
  previous_ids(previous_ordered_ids) 
end 

def previous_ids(previous_ordered_ids)
  rearranged_prio = 0

  previous_ordered_ids.each do |overview_id|  
    next if id.eql? overview_id
    rearranged_prio += 1
    return rearranged_prio += 1 if rearranged_prio.eql? prio
      
    self.class.without_callback(:update, :before, :rearrangement) do
      overview = self.class.where(id: overview_id).where.not(prio: rearranged_prio).take
      overview.update!(prio: rearranged_prio) if overview.blank?
    end
  end
end    