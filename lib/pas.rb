module PAS
  require 'active_resource'
  require 'active_support'
  require 'openssl'
  require 'base64'

  autoload :Connection,     'pas/connection'
  autoload :Resource,       'pas/resource'
  autoload :Session,        'pas/session'
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
  
  class Error < RuntimeError; end
  class DisabledMethodError < PAS::Error
    def initialize
      super "This method is disabled for this Resource"
    end
  end
end