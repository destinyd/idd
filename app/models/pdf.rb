class Pdf
  include Mongoid::Document
  include Mongoid::Timestamps
  mount_uploader :pdf, PdfUploader
  scope :recent, desc(:created_at).limit(1)
  index({ ord: 1 }, {background: true })
end
