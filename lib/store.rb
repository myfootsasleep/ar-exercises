class Store < ActiveRecord::Base
  has_many :employees
  validates :name, presence: true, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  # validates :validate_must_carry_apparel

  # def validate_must_carry_apparel
  #   if !mens_apparel || !womens_apparel
  #     errors.add(:mens_apparel, "must carry at least one of mens or womens")
  #     errors.add(:womens_apparel, "must carry at least one of men or womens")
  #   end
  # end
end
