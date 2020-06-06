class LecturesController < CollectionController
  skip_before_action :authenticate_user, only: [:index]

  def create
    thumbnail_path = ImageUpload.upload(params[:file], '/lectures')

    y, m, d = params[:date].split('-')
    h, min = params[:time].split(':')
    Lecture.create({
      title: params[:title],
      speaker: params[:speaker],
      description: params[:description],
      schedule_time: Time.new(y, m, d, h.to_i - 1, min),
      thumbnail: thumbnail_path
    })

    render status: 201
  end
end
