class Twitt < ApplicationRecord
  mount_uploaders :photos, PhotosUploader
  serialize :photos, JSON # If you use SQLite, add this line.

  belongs_to :user
end
