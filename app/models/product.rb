class Product < ActiveRecord::Base
	validates :name, presence: true
	validates :description, length: {minimum: 20}
	validates :description, length: {maximum: 200}
end
