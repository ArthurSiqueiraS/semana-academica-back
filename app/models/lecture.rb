class Lecture
  include Mongoid::Document
  field :title, type: String
  field :speaker, type: String
  field :description, type: String
  field :schedule_time, type: Time
  field :link, type: String
  field :thumbnail, type: String

  validates :title, presence: true
  validates :speaker, presence: true
  validates :description, presence: true
end
