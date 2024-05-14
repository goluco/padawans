class Padawan < ApplicationRecord
  validates :name, :email, presence: true
end
