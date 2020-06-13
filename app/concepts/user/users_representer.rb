class UsersRepresenter < CollectionRepresenter
  def self.decoration(user, params)
    {
      id: user.id.to_s
    }
  end
end
