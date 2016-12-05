class Product < ActiveRecord::Base
  has_many :orders
  has_many :comments

  def highest_rating_comment
    comments.rating_desc.first
  end
  def lowest_rating_comment
    comments.rating_desc.last
  end
  def average_rating
    comments.average(:rating).to_f
  end

  validates :name, presence: true
end