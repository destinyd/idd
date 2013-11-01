ActiveAdmin.register Post do
  menu label: proc{I18n.t("mongoid.models.post")}
  form do |f|
    f.inputs do
      f.input :category, collection: Category.all
      f.input :title
      f.input :introduction
      f.input :content, as: :kindeditor#, owner_id: page
      f.input :image
    end
    f.actions
  end
end
