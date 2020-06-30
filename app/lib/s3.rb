class S3
  class << self
    def upload(file, folder = '')
      key = "#{folder}/#{Time.now.strftime("%Y%m%d%H%M%S%L")}_#{file.original_filename}"
      key = 'development/' + key if Rails.env == 'development'
      obj = S3_BUCKET.object(key)
      obj.upload_file(file.path)
      S3_CLIENT.put_object_acl(acl: 'public-read', bucket: S3_BUCKET.name, key: key)

      obj.public_url
    end

    def delete_object(key)
      key = 'development/' + key if Rails.env == 'development'
      object = S3_BUCKET.object(key)
      object.delete
    end
  end
end