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
    def upload_poster(params, id=nil)
      id ||= params[:id]
      folder = "posters/#{id.to_s}"

      poster = {}

      pdfFile = params[:pdfFile]
      poster[:pdf] = S3.upload(pdfFile.path, folder) if pdfFile

      coverFile = params[:coverFile]
      if coverFile
        byebug
        image = MiniMagick::Image.open(coverFile.path)
        image.resize('600x800')
        poster[:cover] = S3.upload(image.path, folder)
      end

      if params[:id]
        old_poster = Publication.find(params[:id])

        S3.delete_object("#{folder}/#{File.basename(old_poster.pdf)}") if pdfFile
        S3.delete_object("#{folder}/#{File.basename(old_poster.cover)}") if coverFile
      end

      poster
    end
  end
end
