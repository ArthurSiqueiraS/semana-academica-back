class User
  include ActiveModel::SecurePassword
  include Mongoid::Document
  field :email, type: String
  field :approved, type: Boolean, default: false
  field :password_digest, type: String
  field :admin, type: Boolean, default: false
  field :token, type: String

  has_secure_password

  validates :email, presence: true, uniqueness: { message: 'E-mail já cadastrado' }
  validates :password_digest, presence: true

  def self.from_token_request(request)
    begin
      email = request.params['auth']['email']

      self.find_by(email: email.strip.downcase)
    rescue
    end
  end
end
