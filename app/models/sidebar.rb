class Sidebar
  include Mongoid::Document
  field :category_name, type: String, default: 'IDD疗法介绍'
  field :name, type: String
  field :url, type: String
  field :ord, type: Integer, default: 0

  default_scope desc(:ord)
end
