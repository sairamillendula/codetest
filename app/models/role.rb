class Role < ApplicationRecord
  has_and_belongs_to_many :users

  scope :active , -> { where(hide: false) }
  scope :inactive, -> { where(hide: true) }
end
