class PublicationsRepresenter < CollectionRepresenter
      def self.decoration(publication)
        publication.as_json
      end
end
