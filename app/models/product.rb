class Product < ActiveRecord::Base
	default_scope order: "title"
	has_many :line_items
	

	validates(:title, :description, :image_url, :price, {presence: :true})
	validates :price, numericality: { greater_than_or_equal_to: 0.01 }
	validates :title, uniqueness: true
	validates :image_url, format: {
		with: %r{\.(gif|png|jpg)$}i,
		message: 'must be a URL for GIF, PNG or JPG image.',
		multiline: true
	}
end
