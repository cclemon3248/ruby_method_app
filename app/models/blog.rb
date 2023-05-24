class Blog < ApplicationRecord
  belongs_to :user
  validates :ruby_rails, presence: true
  has_many :favorites, dependent: :destroy
  has_many :favorite_users, through: :favorites, source: :user
end
