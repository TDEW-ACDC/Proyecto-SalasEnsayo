Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?
  provider :twitter, 'Bo7wDwIMayS4G7nYAE8A', 'fXTfRRP39TrhiJ2cK4fiNRXISCKKkrinGvLaK0iiIvk'
end