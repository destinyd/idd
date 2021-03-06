require 'carrierwave/mongoid'

class Kindeditor::Asset
  include Mongoid::Document
  include Mongoid::Timestamps
  mount_uploader :asset, Kindeditor::AssetUploader
  field :file_size, :type => Integer
  field :file_type, :type => String
  field :asset_type, :type => String
  belongs_to :owner, polymorphic: true#, inverse_of: :attachments
  validates_presence_of :asset
  before_save :update_asset_attributes
  attr_accessible :asset
  
  def self.collection_name
    :kindeditor_assets
  end

  private
  def update_asset_attributes
    if asset.present? && asset_changed?
      self.file_size = asset.file.size
      self.file_type = asset.file.content_type
    end
  end
end
