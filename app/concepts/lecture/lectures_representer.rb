class LecturesRepresenter < CollectionRepresenter
  def self.decoration(lecture)
    lecture.as_json.merge({
      live: lecture.live,
      id: lecture.id.to_s,
      link: "/livestream/#{lecture.id.to_s}"
    })
  end
end
