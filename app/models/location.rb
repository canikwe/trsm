class Location < ApplicationRecord
  has_many :visits
  has_many :users, through: :visits

  def expense
    if self.admission_fee >= 50
      '💰💰💰'
    elsif self.admission_fee >= 25
      '💰💰'
    else
      '💰'
    end
  end
end
