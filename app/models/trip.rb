class Trip < ApplicationRecord
    belongs_to :user

    validates :title, :entry, :country, :region, :user_id, presence: true
end
