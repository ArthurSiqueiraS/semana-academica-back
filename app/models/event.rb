class Event
  include Mongoid::Document

  field :online, type: Boolean, default: false
end