class Product < ActiveRecord::Base
	has_many :testimonials
	validates :name, presence: true
	validates :description, length: {minimum: 20}
	validates :description, length: {maximum: 200}
end
