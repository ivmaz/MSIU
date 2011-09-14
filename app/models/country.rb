class Country < ActiveRecord::Base
  default_scope order(:name)

  has_and_belongs_to_many :films
  validates :name,:presence => true,:uniqueness => true
end
