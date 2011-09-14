class Contract < ActiveRecord::Base
  belongs_to :person
  belongs_to :post
  belongs_to :film
end
