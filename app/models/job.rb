class Job < ApplicationRecord

    belongs_to :user

    validates :title, :description, presence: true
    validates :title, length: { maximum: 150 }

end

