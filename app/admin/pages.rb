ActiveAdmin.register Page do
  menu label: proc{I18n.t("mongoid.models.page")}
  form do |f|
    f.inputs do
      f.input :category, collection: Category.all
      f.input :content, as: :kindeditor#, owner_id: page
    end
    f.actions
  end 
end
