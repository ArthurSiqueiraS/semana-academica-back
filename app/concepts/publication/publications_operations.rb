class PublicationsOperations < CollectionOperations

  private

  def query_search
    regex = /.*#{query[:search]}.*/i

    query[:'$or'] ||= []
    query[:'$or'] += [
      { title: regex },
      { author: regex }
    ]
  end

  class << self
    def upload_poster(params)
      folder = 'posters'
      poster = S3.upload(params[:file], folder)
      if params[:id]
        old_poster = Publication.find(params[:id]).poster
        S3.delete_object("#{folder}/#{File.basename(old_poster)}")
      end

      poster
    end
  end
end
