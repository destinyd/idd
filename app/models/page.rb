class Page
  include Mongoid::Document
  include Mongoid::Timestamps
  field :content, type: String
  #field :path, type: String
  field :status, type: String
  field :published_at, type: Time
  field :visits, type: Integer, default: 0
  belongs_to :category

  scope :recent, desc(:published_at_at)

  #validates :path, presence: true, uniqueness: true
end
