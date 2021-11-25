class PhotoGallerySerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :name, :photo
  def photo
    if object.photo.attached?
      {
        url: rails_blob_url(object.photo)
      }
    end
  end
end
