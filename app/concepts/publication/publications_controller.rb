class PublicationsController < CollectionController
  skip_before_action :authenticate_user, only: [:index]

  def create
    Publication.create(poster: PublicationsOperations.upload_poster(params))

    render status: 201
  end

  def update
    publication = Publication.find(params[:id])
    publication.update(poster: PublicationsOperations.upload_poster(params))

    render status: 200
  end

  def destroy
    publications_query = {}
    publications_query[:id] = { '$in': params[:ids] } if params[:ids]

    publications = Publication.where(publications_query)
    posters = publications.pluck(:poster)

    posters.each do |poster|
      S3.delete_object("publications/#{File.basename(poster)}")
    end

    publications.delete

    render status: 200
  end
end
