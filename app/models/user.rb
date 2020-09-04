class User < ApplicationRecord
  attr_accessor :user_meta_data
  has_many :user_metum, dependent: :destroy
  has_and_belongs_to_many :roles

  validates :email, uniqueness: true
  mount_uploaders :avatars, AvatarUploader
  serialize :avatars, JSON

  accepts_nested_attributes_for :user_metum, allow_destroy: true, reject_if: proc { |att| att['meta_key'].blank? }
end
