ActiveAdmin.register Option do
  menu :priority => 21, :label => proc{ I18n.t("mongoid.models.option") }
  actions :all, :except => [:destroy, :new, :create]

  index do
    column :name
    column :value
    actions :defaults => false do |option|
      if option.is_boolean?
        link_to "转换", turn_admin_option_path(option)
      else
        link_to "修改", edit_admin_option_path(option)
      end
    end
  end

  member_action :turn do
    option = Option.find(params[:id])
    option.turn
    redirect_to({action: :index}, {:notice => "turn!"})
  end

  form do |f|
    f.inputs do
      f.input :value, as: :kindeditor#, owner_id: page
    end
    f.actions
  end 

  controller do
    def update
      update! do |format|
        format.html { redirect_to admin_options_path }
      end
    end
  end
end
