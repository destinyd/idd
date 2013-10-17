class Page
  include Mongoid::Document
  include Mongoid::Timestamps
  field :content, type: String
  field :path, type: String
  field :status, type: String
  field :published_at, type: Time

  #validates :path, presence: true, uniqueness: true
end
