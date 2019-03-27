if Rails.env.production?
  Rails.configuration.stripe = {
    publishable_key: ENV['STRIPE_PUBLISHABLE_KEY'],
    secret_key: ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    publishable_key: 'pk_test_vn6vWWrL9d9CcEyRtxZrhBqg00yxzdh1de',
    secret_key: 'sk_test_r5ow5B6kxWCN8UqDLBtAgTU000Nr7AyxiU'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]
