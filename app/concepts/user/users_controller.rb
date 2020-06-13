class UsersController < CollectionController
  skip_before_action :authenticate_user, only: [:index, :create]

  def create
    User.create(
      name: params[:name],
      email: params[:email],
      student_id: params[:studentId],
      cpf: params[:cpf],
      password: params[:password]
    )

    render status: 201
  end

  def update
    user = User.find(params[:id])

    user.update(approved: params[:approved])

    render status: 200
  end
end
