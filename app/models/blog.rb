class Blog < ApplicationRecord
  belongs_to :user
  validates :name, presence: true, length: { maximum: 30 }
  validates :ruby_rails, presence: true
  validates :content, presence: true, length: { maximum: 320 }
  validates :code1, presence: true, length: { maximum: 1600 }
  validates :code2, presence: true, length: { maximum: 1600 }
  validates :code3, length: { maximum: 1600 }
  has_many :favorites, dependent: :destroy
  has_many :favorite_users, through: :favorites, source: :user
  has_many :comprehensions, dependent: :destroy
  has_many :comprehension_users, through: :favorites, source: :user
end
