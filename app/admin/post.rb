ActiveAdmin.register Post do
  menu label: proc{I18n.t("mongoid.models.post")}
  scope :recent, default: true
  scope :older
  index do
    selectable_column
    column :image do |post|
      link_to image_tag(post.image.thumb), admin_post_path(post) if post.image
    end
    column :title do |post|
      link_to post.title, admin_post_path(post)
    end
    column :introduction do |post|
      post.introduction || post.content.block
    end
    column :category do |post|
      link_to post.category, admin_category_path(post.category) if post.category
    end
    column :visits
    column :created_at
    actions
  end

  form do |f|
    f.inputs do
      f.input :category, collection: Category.all
      f.input :title
      f.input :introduction
      f.input :content, as: :kindeditor#, owner_id: post
      f.input :image
    end
    f.actions
  end
end
