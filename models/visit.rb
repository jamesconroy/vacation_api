class Visit < ActiveRecord::Base
  belongs_to(:user)
  belongs_to(:location)

  def to_s
    self.name
  end

end
