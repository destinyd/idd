ActiveAdmin.register Video do
  menu label: proc{I18n.t("mongoid.models.post")}
  scope :recent, default: true

  index do
    selectable_column
    column :image do |post|
      link_to image_tag(post.image.thumb), admin_post_path(post)
    end
    column :title do |post|
      link_to post.title, admin_post_path(post)
    end
    column :introduction do |post|
      post.introduction || post.content.block
    end
    column :category do |post|
      link_to post.category, admin_category_path(post.category)
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
      f.input :content, as: :kindeditor#, owner_id: post
      f.input :image
    end
    f.actions
  end

end
