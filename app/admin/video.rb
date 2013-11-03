ActiveAdmin.register Video do
  menu label: proc{I18n.t("mongoid.models.video")}
  scope :recent, default: true

  index do
    selectable_column
    column :image do |video|
      link_to image_tag(video.image.thumb), admin_video_path(video)
    end
    column :title do |video|
      link_to video.title, admin_video_path(video)
    end
    column :introduction do |video|
      video.introduction || video.content.block
    end
    column :category do |video|
      link_to video.category, admin_category_path(video.category) if video.category
    end
    column :visits
    column :created_at
    actions
  end

  form do |f|
    f.inputs do
      f.input :title
      f.input :url
      f.input :introduction
      f.input :content, as: :kindeditor#, owner_id: video
      f.input :image
    end
    f.actions
  end

end
