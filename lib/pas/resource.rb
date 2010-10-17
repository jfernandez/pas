module PAS
  class Resource < ActiveResource::Base
    self.site = PAS.config[:domain_name]
    
    class << self
      def find_single(scope, options)
        prefix_options, query_options = split_options(options[:params])
      
        # Generate the API authentication signature and merge parameters to the query_options
        path_without_query_options = element_path(scope, prefix_options)
        timestamp = Time.now.to_i.to_s
        signature = generate_signature("GET", path_without_query_options, timestamp)
        query_options.merge!({ :api_token => PAS.api_token.to_s, :timestamp => timestamp, :signature => signature })
      
        path = element_path(scope, prefix_options, query_options)
        instantiate_record(connection.get(path, headers), prefix_options)
      end
    
      def generate_signature(request_method, request_path, timestamp) 
        data = PAS.api_token.to_s + request_method + request_path +  timestamp
        signature = OpenSSL::HMAC.digest(OpenSSL::Digest::SHA1.new, PAS.api_access_key.to_s, data)
        Base64.encode64(signature).chomp 
      end
    end
  end
end