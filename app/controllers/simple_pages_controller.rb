class SimplePagesController < ApplicationController
  def index
  end

  def landing_page
    @products = Product.limit(3)
  end

  def about
    @miracle_cream_product = Product.find_by name: "Intensive Moisturising Lotion – Mama Kraus’s Miracle Cream"
  end

  def thank_you
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
    ActionMailer::Base.mail(from: @email,
        to: 'ckraus0089@gmail.com',
        subject: "A new contact form message from #{@name}",
        body: @message).deliver_now
  end

end
