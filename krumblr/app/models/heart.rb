class Heart < ActiveRecord::Base
	belongs_to :post
	validate :post_id, presence: true
end