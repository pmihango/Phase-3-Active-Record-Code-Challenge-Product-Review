class User < ActiveRecord::Base
  has_many :reviews
  has_many :products, through: :reviews

  def favorite_product
    self.products.find { |product|
      product.review(self.id).star_rating == self.products.maximum(:star_rating)
    }
  end

  def remove_reviews(product)
    reviews.delete(product.reviews.find { |review| review.user_id == self.id })
  end
end
