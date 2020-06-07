class LecturesController < CollectionController
  skip_before_action :authenticate_user, only: [:index]

  def create
    Lecture.create(LecturesOperations.parse_params(params))

    render status: 201
  end

  def update
    lecture = Lecture.find(params[:id])
    lecture.update(LecturesOperations.parse_params(params))

    render status: 200
  end

  def destroy
    lectures_query = {}
    lectures_query[:id] = { '$in': params[:ids] } if params[:ids]

    lectures = Lecture.where(lectures_query)
    thumbnails = lectures.pluck(:thumbnail)

    thumbnails.each do |thumbnail|
      LecturesOperations.delete_thumbnail(thumbnail)
    end

    lectures.delete

    render status: 200
  end
end
