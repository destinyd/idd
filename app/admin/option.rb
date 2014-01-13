ActiveAdmin.register Option do
  menu :priority => 21, :label => proc{ I18n.t("mongoid.models.option") }

  index do
    column :name
    column :value
    actions :defaults => false do |option|
      link_to "转换", turn_admin_option_path(option)
    end
  end

  member_action :turn do
    option = Option.find(params[:id])
    option.turn
    redirect_to({action: :index}, {:notice => "turn!"})
  end

  #action_item do
    #link_to('Turn', turn_option_path(option))
  #end


end
