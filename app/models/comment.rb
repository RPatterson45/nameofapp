class Comment < ActiveRecord::Base
  belongs_to :products
  belongs_to :user
  scope :rating_desc, -> {order(rating: :desc)}
  scope :rating_asc, -> {order(rating: :asc)}
end
