class Pet < ApplicationRecord
  validates :name, :address, presence: true
  validates :species, inclusion: { in: ["chat", "chien", "tortue", "serpent"] }
end
