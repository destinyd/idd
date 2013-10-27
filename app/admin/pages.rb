ActiveAdmin.register Page do
  form do |f|
    f.inputs do
      f.input :content, :as => :kindeditor
      f.input :category, collection: Category.all
    end
    f.actions
  end 
end
