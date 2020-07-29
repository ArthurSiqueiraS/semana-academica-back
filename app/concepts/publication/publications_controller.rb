class PublicationsController < CollectionController
  skip_before_action :authenticate_user, only: [:index]

  def create
    id = BSON::ObjectId.new
    Publication.create(({ id: id }).merge(PublicationsOperations.upload_poster(params, id)))

    render status: 201
  end

  def update
    publication = Publication.find(params[:id])
    publication.update(PublicationsOperations.upload_poster(params))

    render status: 200
  end

  def destroy
    publications_query = {}
    publications_query[:id] = { '$in': params[:ids] } if params[:ids]

    publications = Publication.where(publications_query)

    publications.each do |publication|
      S3.delete_object("publications/#{publication.id}/#{File.basename(publication.pdf)}")
      S3.delete_object("publications/#{publication.id}/#{File.basename(publication.cover)}")
    end

    publications.delete

    render status: 200
  end
end
