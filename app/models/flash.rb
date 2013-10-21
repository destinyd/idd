class Flash
  include Mongoid::Document
  include Mongoid::Timestamps
  field :url,              :type => String, :default => ""
  #acts_as_commentable
  #acts_as_taggable
  mount_uploader :image, FlashUploader

  scope :recent,desc(:created_at).limit(5)
end
