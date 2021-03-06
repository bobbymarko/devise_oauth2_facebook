require 'devise'
require 'fbgraph'

require 'devise_oauth2_facebook/engine'
require 'devise_oauth2_facebook/facebook_consumer_helper'
require 'devise_oauth2_facebook/model'
require 'devise_oauth2_facebook/routes'

module Devise
  mattr_accessor :facebook_uid_field
  @@facebook_uid_field = :facebook_uid

  mattr_accessor :facebook_token_field
  @@facebook_token_field = :facebook_token

  mattr_accessor :facebook_api_key
  @@facebook_api_key = nil

  mattr_accessor :facebook_api_secret
  @@facebook_api_secret = nil
  
  mattr_accessor :facebook_permissions
  @@facebook_permissions = 'offline_access,email'
  
  mattr_accessor :facebook_callback_url
  @@facebook_callback_url = nil
  
end

Devise.add_module(:devise_oauth2_facebook,
  :strategy => false,
  :controller => :facebook_consumer,
  :route => :facebook_consumer,
  :model => 'devise_oauth2_facebook/model'
)