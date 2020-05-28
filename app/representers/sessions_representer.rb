class SessionsRepresenter < CollectionRepresenter
  def self.decoration(user)
    {
      id: user.id.to_s,
      admin: user.admin,
      approved: user.approved
    }
  end
end
