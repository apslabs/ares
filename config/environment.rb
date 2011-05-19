# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Ares::Application.initialize!

ActionController::Base.asset_host = Proc.new do |source, request|
  if request.format == 'pdf'
    "file://#{Rails.root.join('public')}"
  end
end
