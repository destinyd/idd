class Page
  include Mongoid::Document
  include Mongoid::Timestamps
  field :title, type: String
  field :introduction, type: String
  field :content, type: String
  field :path, type: String
  field :status, type: String
  field :published_at, type: Time
end
