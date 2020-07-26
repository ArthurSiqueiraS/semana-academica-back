class SessionsRepresenter < CollectionRepresenter
  def self.decoration(user)
    {
      id: user.id.to_s,
      admin: user.admin,
      presence: user.presence,
      name: user.name
    }
  end
end
