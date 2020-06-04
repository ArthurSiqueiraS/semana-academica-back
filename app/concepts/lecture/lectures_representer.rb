class LecturesRepresenter < CollectionRepresenter
      def self.decoration(lecture)
        lecture.as_json.merge({
          id: lecture.id.to_s
        })
      end
end
