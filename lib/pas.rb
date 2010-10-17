module PAS
  require 'active_resource'
  require 'active_support'
  require 'openssl'
  require 'base64'

  autoload :Resource,       'pas/resource'
  autoload :Member,         'pas/member'
  autoload :MemberTracker,  'pas/member_tracker'
  
  class << self
    
    def config
      @config ||= {
        :api_access_key => "",
        :api_token      => "",
        :domain_name    => "https://publisher.pokeraffiliatesolutions.com/"
      }
    end
    
  end
end