class Phone < ApplicationRecord
  include StringNormalizer

  belongs_to :user

  before_validation do
    self.number = normalize_as_phone_number(number)
  end

  validates :number, presence: true,
    format: { with: /\A\+?\d+(-\d+)*\z/, allow_blank: true }
end
