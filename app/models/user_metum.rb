class UserMetum < ApplicationRecord
  belongs_to :user, optional: true

  validates_uniqueness_of :meta_key, scope: :user_id
end
