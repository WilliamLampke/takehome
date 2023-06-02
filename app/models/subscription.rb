class Subscription < ApplicationRecord
    has_one :tea
    belongs_to :customer

    enum status: [:active, :canceled]
end