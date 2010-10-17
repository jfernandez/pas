module PAS
  class Resource < ActiveResource::Base
    self.site = PAS.config[:domain_name]
    
    class << self
      def connection(refresh = false)
        if defined?(@connection) || superclass == Object
          @connection = PAS::Connection.new(site, format) if refresh || @connection.nil?
          @connection.user = user if user
          @connection.password = password if password
          @connection.timeout = timeout if timeout
          @connection
        else  
          superclass.connection
        end
      end
    end
  end
end