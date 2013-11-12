class Video < Page
  field :introduction, type: String
  field :url, type: String
  mount_uploader :image, ImageUploader
  validates :url, presence: true
  validates :title, presence: true

  scope :newer_by, lambda{|video| where(:created_at.gt => video.created_at).older}
  scope :older_by, lambda{|video| where(:created_at.lt => video.created_at).recent}

  def older
    @older ||= Video.older_by(self).first
  end

  def newer
    @newer ||= Video.newer_by(self).first
  end
end
