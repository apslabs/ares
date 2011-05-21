CUSTOM_PROVIDER_URL = "http://federation.apslabs.com.ar/"

module OmniAuth
  module Strategies
    autoload :Apslabs, 'apslabs_oauth_strategy'
  end
end

Rails.application.config.middleware.use OmniAuth::Builder do
# provider :apslabs, 'odiseo', '508ae4140a1d1ebf8b25dcfce60aa77a4f00c96866', :site => CUSTOM_PROVIDER_URL
  provider :apslabs, 'ares', 'ec85887f354e1447a30649fe3a0908cf33dc269128', :site => CUSTOM_PROVIDER_URL
end