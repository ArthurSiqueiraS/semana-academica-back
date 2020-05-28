class Publication
  include Mongoid::Document
  field :title, type: String
  field :author, type: String
  field :thumbnail, type: String
end
