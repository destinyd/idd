ActiveAdmin.register Category do
  remove_filter :categories
  remove_filter :pages
  remove_filter :posts
  #scope :root, default: true
  index do
    column :name
    column :ord
    column :parent
    actions
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :ord
      f.input :parent, collection: Category.all
    end
    f.actions
  end 

end
