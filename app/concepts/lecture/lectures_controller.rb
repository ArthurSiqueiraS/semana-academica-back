class LecturesController < CollectionController
  skip_before_action :authenticate_user
end
