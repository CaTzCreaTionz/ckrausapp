class Product < ApplicationRecord
  has_many :orders
  has_many :comments

  validates :name, presence: true
  validates :description, presence: true
  validates :long_description, presence: true
  validates :ingredients, presence: true
  validates :how_to_use, presence: true
  validates :price, presence: true
  validates :image_url, presence: true

  def self.search(search_term)
    if Rails.env.production? # use "ilike" matching operator for postgres to ignore upper- and lower-case
      Product.where("name ilike ?", "%#{search_term}%")
    else
    	Product.where("name LIKE ?", "%#{search_term}%")
    end
  end

  def highest_rating_comment
    comments.rating_desc.first
  end

  def lowest_rating_comment
    comments.rating_desc.last
  end

  def average_rating
    comments.average(:rating).to_f
  end

end
