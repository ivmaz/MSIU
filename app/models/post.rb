class Post < ActiveRecord::Base
  belongs_to :people
  has_many :contracts 


  validates :name,:presence => true,:uniqueness => true
end
