class Cat < ApplicationRecord
  CAT_COLORS = %w(red yellow black blue green tan white orange)
  
  validates :birth_date, :name, :color, :sex, :description, presence: true
  validates :color, inclusion: { in: CAT_COLORS}
  validates :sex, inclusion: { in: %w(M F) }

  def age
   created_at.year - birth_date.year
  end

end