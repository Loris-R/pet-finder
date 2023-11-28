class Pet < ApplicationRecord
  SPECIES = ["cat", "dog", "turtle", "snake"]

  validates :name, :address, presence: true
  validates :species, inclusion: { in: SPECIES }

  def found_since
    (Date.today - found_on).to_i
  end
end
