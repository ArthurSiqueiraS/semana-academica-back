class UsersRepresenter::Maintenance < UsersRepresenter
  def self.decoration(user, params)
    {
      id: user.id.to_s,
      name: user.name,
      email: user.email,
      cpf: user.cpf,
      presence: user.presence
    }
  end
end
