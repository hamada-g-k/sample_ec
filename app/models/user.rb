class User < ApplicationRecord
  include EmailHolder
  include PersonalNameHolder

  has_one :address, dependent: :destroy
  has_one :phone, dependent: :destroy
  accepts_nested_attributes_for :address, allow_destroy: true
  accepts_nested_attributes_for :phone, allow_destroy: true

  before_save { email.downcase! }

  validates :gender, inclusion: { in: %w(male female), allow_blank: true }
  has_secure_password
  validates :password_digest, presence: true, length: { minimum: 2 }

  # 会員フルネーム
  def full_name
    self.family_name + ' ' + self.given_name
  end
end
