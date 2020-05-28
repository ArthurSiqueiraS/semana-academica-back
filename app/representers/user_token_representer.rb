class UserTokenRepresenter < ApplicationRepresenter
  def self.decorate(value, expiration=1.day.from_now)
    {
      value: value,
      expires: expiration,
      secure: Rails.env.production?,
      path: "/"
    }
  end
end