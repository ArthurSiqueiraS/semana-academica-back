class Participant
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
end
