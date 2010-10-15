require 'active_resource'
require 'openssl'
require 'base64'

class PAS
  
  attr_reader :api_access_key
  attr_reader :api_token
  
  def initialize(api_access_key, api_token)
    @api_access_key = api_access_key
    @api_token      = api_token
  end
  
end