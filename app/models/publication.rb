class Publication
  include Mongoid::Document
  field :pdf, type: String
  field :cover, type: String
end
