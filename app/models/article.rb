class Article < ApplicationRecord
    has_many :comments, dependent: :destroy
    mount_uploader :avatar, AvatarUploader
    validates :title, presence: true,
                    length: { minimum: 5 }
end
