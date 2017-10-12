class Babysitter < ApplicationRecord
	belongs_to :user
	has_many :selected_babysitting_times

	validates :name, presence: true
	validates :user_id, presence: true
end
