if Rails.env.production?
  Rails.configuration.stripe = {
    :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
    :secret_key => ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    :publishable_key => 'pk_test_KWdFAOeif706gfr6eBMNs14b',
    :secret_key => 'sk_test_kd015UonVgrH5hKMQAo0B3dn'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]