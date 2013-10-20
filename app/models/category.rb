class Category
  include Mongoid::Document
  field :name, type: String
  field :ord, type: Integer, default: ->{ Category.count + 1}
  belongs_to :parent, class_name: 'Category', inverse_of: :categories
  has_many :categories, inverse_of: :parent
  has_many :pages
  has_many :posts

  #accepts_nested_attributes_for :categories

  scope :root, where(parent: nil)
  
  index({ category: 1 }, {background: true })

  def to_s
    name
  end
end
