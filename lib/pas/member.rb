module PAS
  class Member < PAS::Resource
    self.collection_name  = "publisher_members"
    
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