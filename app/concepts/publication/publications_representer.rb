class PublicationsRepresenter < CollectionRepresenter
      def self.decoration(publication)
        {
          id: publication.id.to_s,
          link: "/publications/#{publication.id.to_s}",
          poster: publication.poster
        }
      end
end
