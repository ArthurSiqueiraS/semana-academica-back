class LecturesRepresenter < CollectionRepresenter
      def self.decoration(lecture)
        lecture.as_json
      end
end
