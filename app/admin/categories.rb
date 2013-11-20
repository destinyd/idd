ActiveAdmin.register Category do
  menu label: proc{I18n.t("mongoid.models.category")}, priority: 2
  remove_filter :categories
  remove_filter :pages
  remove_filter :posts
  #scope :root, default: true
  index do
    column :name
    column :ord
    column :parent
    column :image
    column :is_menu
    column :is_index
    actions
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :ord
      f.input :parent, collection: Category.all
      f.input :image
      f.input :is_menu, as: :boolean
      f.input :is_index, as: :boolean
    end
    f.actions
  end 

end
