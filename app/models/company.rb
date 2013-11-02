class Company
  include Mongoid::Document
  field :name, type: String
  field :technology, type: String
  field :environment, type: String
end
