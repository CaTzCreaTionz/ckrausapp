class SimplePagesController < ApplicationController
  def index
  end

  def landing_page
    @products = Product.limit(3)
  end

  def about
    @miracle_cream_product = Product.find_by name: "Intensive Moisturising Lotion – Mama Kraus’s Miracle Cream"
  end

end
