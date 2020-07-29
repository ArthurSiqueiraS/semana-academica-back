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

      pdfFile = params[:pdfFile]

      if pdfFile
        folder = "posters/#{id.to_s}"
        pdf = S3.upload(pdfFile.path, folder)

        if params[:id]
          old_poster = Publication.find(params[:id])

          S3.delete_object("#{folder}/#{File.basename(old_poster.pdf)}") if pdfFile
        end
      end

      pdf
    end
  end
end
