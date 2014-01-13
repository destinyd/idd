class Option
  include Mongoid::Document
  field :name, type: String
  field :value, type: String

  validates :name, presence: true, uniqueness: true
  validates :value, presence: true

  def is_true?
    value == 'true'
  end

  def turn_off
    update_attribute :value, 'false'
  end

  def turn_on
    update_attribute :value, 'true'
  end

  def turn
    if is_true?
      turn_off
    else
      turn_on
    end
  end
end
