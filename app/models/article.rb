class Article < ApplicationRecord
    validates :title, presence: true,
                    length: { minimum: 2 }
    mount_uploader :photo, PhotoUploader
end
