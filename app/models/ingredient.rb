class Ingredient < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  has_many :doses
  has_many :cocktails, through: :doses
  before_destroy :check_for_doses

  private

  def check_for_doses
    if doses.count > 0
      errors.add_to_base("cannot delete ingredient while doses exist with this ingredient")
      return false
    end
  end

end
