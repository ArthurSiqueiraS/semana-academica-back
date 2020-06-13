class UsersRepresenter::Maintenance < UsersRepresenter
  def self.decoration(user, params)
    {
      id: user.id.to_s,
      name: user.name,
      email: user.name,
      studentId: user.student_id,
      cpf: user.cpf,
      approved: user.approved
    }
  end
end
