class User
  include ActiveModel::SecurePassword
  include Mongoid::Document
  field :email, type: String
  field :name, type: String
  field :student_id, type: String
  field :cpf, type: String
  field :approved, type: Boolean, default: nil
  field :password_digest, type: String
  field :admin, type: Boolean, default: false
  field :token, type: String

  has_secure_password

  validates :email, presence: true, uniqueness: { message: 'E-mail já cadastrado' }
  validates :student_id, presence: true, uniqueness: true
  validates :cpf, presence: true, uniqueness: true
  validates :name, presence: true
  validates :password_digest, presence: true

  def self.from_token_request(request)
    begin
      login = request.params['auth']['login']

      self.find_by(email: login.strip.downcase)
    rescue
    end
  end
end
