json.array!(@subscriptions) do |subscription|
  json.extract! subscription, :id, :plan_id, :email, :stripe_customer_token
  json.url subscription_url(subscription, format: :json)
end
