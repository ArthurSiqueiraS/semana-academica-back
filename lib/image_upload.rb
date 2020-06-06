class ImageUpload
  class << self
    def upload(file, folder = '')
      acc = 0
      absolute_path = Dir.pwd + '/public'
      folder = '/local' + folder

      FileUtils.mkdir_p(absolute_path + folder)

      relative_path = "#{folder}/#{acc}_#{file.original_filename}"
      while File.exists? "#{absolute_path}#{relative_path}"
        acc += 1
        relative_path = "#{folder}/#{acc}_#{file.original_filename}"
      end

      FileUtils.mv(file.path, "#{absolute_path}#{relative_path}")

      relative_path
    end
  end
end