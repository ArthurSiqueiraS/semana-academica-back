class LecturesOperations < CollectionOperations
  class << self
    def parse_params(params)
      y, m, d = params[:date].split('-')
      h, min = (params[:time] || '').split(':')

      h ||= 1
      min ||= 0

      lecture = {
        title: params[:title],
        speaker: params[:speaker],
        description: params[:description],
        schedule_time: Time.new(y, m, d, h.to_i - 1, min),
        live: params[:live]
      }

      if params[:file].present?
        folder = 'lectures'
        lecture[:thumbnail] = S3.upload(params[:file].path, folder)
        if params[:id]
          thumbnail = Lecture.find(params[:id]).thumbnail
          S3.delete_object("#{folder}/#{File.basename(thumbnail)}")
        end
      end

      lecture
    end
  end
end
