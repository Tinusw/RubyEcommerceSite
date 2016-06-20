if Rails.env.production?
  Rails.configuration.stripe = {
    :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
    :secret_key => ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    :publishable_key => 'pk_test_k6ZIaovtFtpyFqJA8OR6LSOS',
    :secret_key => 'sk_test_m28zWrDSZempph7axGseLQvE'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]