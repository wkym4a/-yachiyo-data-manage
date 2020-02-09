class Ooya < ApplicationRecord

  def full_name
    "#{self.surname} #{self.name}" 
  end

end
