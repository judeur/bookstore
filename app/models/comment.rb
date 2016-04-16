class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :product, touch: true

  validates :body, presence: true, length: { maximum: 500 }
  validates :user, presence: true
  validates :product, presence: true
  validates :rating, numericality: { only_integer: true }
end
