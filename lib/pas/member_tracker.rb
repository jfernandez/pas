module PAS
  class MemberTracker < PAS::Resource
    self.collection_name  = "publisher_member_trackers"
    
    class << self
      def delete(*args)
        raise PAS::DisabledMethodError
      end
    end
    
    def destroy
      raise PAS::DisabledMethodError
    end
  end
end