class LecturesOperations < CollectionOperations
  class << self
    def parse_params(params)
      y, m, d = params[:date].split('-')
      h, min = params[:time].split(':')

      h ||= 1
      min ||= 0

      lecture = {
        title: params[:title],
        speaker: params[:speaker],
        description: params[:description],
        schedule_time: Time.new(y, m, d, h.to_i - 1, min),
      }

      if params[:file].present?
        lecture[:thumbnail] = ImageUpload.upload(params[:file], '/lectures')
        if params[:id]
          delete_thumbnail(Lecture.find(params[:id]).thumbnail)
        end
      end

      lecture
    end

    def delete_thumbnail(thumbnail)
      File.delete("#{Dir.pwd}/public#{thumbnail}")
    end
  end
end
