Rails.application.config.middleware.use OmniAuth::Builder do
  provider :cas, url: 'https://conta.indeorum.com'
end