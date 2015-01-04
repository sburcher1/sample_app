class Article < ActiveRecord::Base
	has_many :comments
	validates_presence_of :title, message: ": Please enter a title"
	validates_length_of :title, maximum: 100, message: ": Title must be less than 100 characters"
	validates_presence_of :body, message: ": Please enter some article text"
end
