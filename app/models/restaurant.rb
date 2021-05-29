class Restaurant < ApplicationRecord
	has_many :reviews, dependent: :destroy

	validates :name, presence: true, null: false
	validates :address, presence: true, null: false
	validates :category, presence: true, null: false, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }
end


