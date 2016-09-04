class User < ActiveRecord::Base
  has_many :restaurants, through :reseravations
  has_many :reservations
end
