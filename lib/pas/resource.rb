require 'active_resource'
require 'openssl'
require 'base64'

class PAS
  class Resource < ActiveResource::Base
    self.site = "http://publisher.pas.local/"
    
    class << self
      # Find a single resource from the default URL
      def find_single(scope, options)
        prefix_options, query_options = split_options(options[:params])
        
        # FOO
        path_without_query_options = element_path(scope, prefix_options)
        timestamp = Time.now.to_i.to_s
        signature = generate_signature("GET", path_without_query_options, timestamp)
        query_options.merge!({ :api_token => "17e16560bab1012d951400254ba05b32", :timestamp => timestamp, :signature => signature })
        # END FOO
        
        path = element_path(scope, prefix_options, query_options)
        instantiate_record(connection.get(path, headers), prefix_options)
      end
      
      def generate_signature(request_method, request_path, timestamp) 
        data = "17e16560bab1012d951400254ba05b32" + request_method + request_path +  timestamp
        signature = OpenSSL::HMAC.digest(OpenSSL::Digest::SHA1.new, "+v/jhrU8vU04SCgTOOYpbp3HnRWS0A6HUCgTZZL3", data)
        Base64.encode64(signature).chomp 
      end
    end
  end
end