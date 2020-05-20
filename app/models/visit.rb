class Visit < ApplicationRecord
  belongs_to :location
  belongs_to :user

  def formatted_date
    self.created_at.strftime("%b %d, %Y")
  end
end
