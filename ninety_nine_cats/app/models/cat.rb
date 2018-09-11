class Cat < ApplicationRecord
  validates :birth_date, :name, :color, :sex, :description, presence: true
  validates :color, inclusion: { in: %w(red yellow black blue green tan white orange), message: "Not a valid color. Choose from red, yellow, black, blue, green, tan, white, orange."
  validates :sex, inclusion: { in: %w(M F), message: "Not a valid sex. Choose from M or F."
  
  def age
   created_at.year - birth_date.year
  end
end