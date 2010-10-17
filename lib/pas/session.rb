module PAS
  class Session < PAS::Resource
    self.collection_name  = "member_remote_sessions"
    
    class << self
      def delete(*args)
        raise PAS::DisabledMethodError
      end
    end
    
    def destroy
      raise PAS::DisabledMethodError
    end
    
    def update
      raise PAS::DisabledMethodError
    end
  end
end