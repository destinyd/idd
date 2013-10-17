class Post < Page
  field :title, type: String
  field :introduction, type: String

  validates :title, presence: true
end
