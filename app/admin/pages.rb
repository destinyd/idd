ActiveAdmin.register Page do
  menu label: proc{I18n.t("mongoid.models.page")}
  scope :recent, default: true
  scope :older
  index do
    selectable_column
    column :title do |page|
      link_to page.title, admin_page_path(page)
    end
    column :content do |page|
      page.content.block
    end
    column :category do |page|
      link_to page.category, admin_category_path(page.category)
    end
    column :visits
    column :created_at
    actions
  end

  form do |f|
    f.inputs do
      f.input :category, collection: Category.all
      f.input :content, as: :kindeditor#, owner_id: page
    end
    f.actions
  end 
end
