class Post < Page
  paginates_per 6
  field :title, type: String
  field :introduction, type: String
  mount_uploader :image, ImageUploader

  validates :title, presence: true
end
