class UsersRepresenter < CollectionRepresenter
      def self.decoration(user)
        {
          id: user.id.to_s
        }
      end
end
