require 'active_resource'
require 'active_support'
require 'openssl'
require 'base64'
require 'pas/resource'
require 'pas/member'

class PAS
  cattr_accessor :api_access_key
  cattr_accessor :api_token
end