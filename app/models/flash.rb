class Flash
  include Mongoid::Document
  include Mongoid::Timestamps
  field :url,              :type => String, :default => ""
  field :ord, type: Integer, default: ->{ Flash.count + 1}
  #acts_as_commentable
  #acts_as_taggable
  mount_uploader :image, FlashUploader

  scope :default_order,desc(:ord)
  scope :recent, default_order.limit(5)

  index({ ord: 1 }, {background: true })
end
