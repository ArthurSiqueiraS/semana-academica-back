class Publication
  include Mongoid::Document
  field :title, type: String
  field :pdf, type: String
end