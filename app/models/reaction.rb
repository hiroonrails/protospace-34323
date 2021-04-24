class Reaction < ApplicationRecord
  belongs_to :prototype, optional: true
  belongs_to :user, optional: true
  #has_one :dependent destroy
  validates :comment, presence: true
end
